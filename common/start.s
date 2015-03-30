	.text
	.global _reset_start
_reset_start:
	.global	_start
_start:
	/* 割り込みスタック設定 */
	.extern _isp_init
	ldc #_isp_init,isp

	/* ユーザースタック設定 */
	.extern _usp_init
	fset u
	ldc #_usp_init,sp

	/* 可変ベクターテーブルアドレス設定 */
	.extern _variable_vectors_
	ldc #_variable_vectors_,intbl
		
	/* 割り込み許可 */
	fset i

	.extern _init
	jmp.w _init

	.global _exit
_exit:
	jmp.w	_exit
