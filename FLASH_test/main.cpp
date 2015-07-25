//=====================================================================//
/*!	@file
	@brief	R8C FLASH メイン
	@author	平松邦仁 (hira@rvf-rc45.net)
*/
//=====================================================================//
#include "main.hpp"
#include "system.hpp"
#include "clock.hpp"
#include "port.hpp"
#include "common/port_map.hpp"
#include "common/command.hpp"
#include <cstring>
#include <cstdlib>

static void wait_(uint16_t n)
{
	while(n > 0) {
		asm("nop");
		--n;
	}
}

static timer_b timer_b_;
static uart0 uart0_;
static flash flash_;

extern "C" {
	void sci_putch(char ch) {
		uart0_.putch(ch);
	}

	char sci_getch(void) {
		return uart0_.getch();
	}

	uint16_t sci_length() {
		return uart0_.length();
	}

	void sci_puts(const char* str) {
		uart0_.puts(str);
	}
}

static utils::command<64> command_;

extern "C" {
	const void* variable_vectors_[] __attribute__ ((section (".vvec"))) = {
		reinterpret_cast<void*>(brk_inst_),		nullptr,	// (0)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (1) flash_ready
		reinterpret_cast<void*>(null_task_),	nullptr,	// (2)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (3)

		reinterpret_cast<void*>(null_task_),	nullptr,	// (4) コンパレーターB1
		reinterpret_cast<void*>(null_task_),	nullptr,	// (5) コンパレーターB3
		reinterpret_cast<void*>(null_task_),	nullptr,	// (6)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (7) タイマＲＣ

		reinterpret_cast<void*>(null_task_),	nullptr,	// (8)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (9)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (10)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (11)

		reinterpret_cast<void*>(null_task_),	nullptr,	// (12)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (13) キー入力
		reinterpret_cast<void*>(null_task_),	nullptr,	// (14) A/D 変換
		reinterpret_cast<void*>(null_task_),	nullptr,	// (15)

		reinterpret_cast<void*>(null_task_),	nullptr,	// (16)
		reinterpret_cast<void*>(uart0_.isend),	nullptr,	// (17) UART0 送信
		reinterpret_cast<void*>(uart0_.irecv),	nullptr,	// (18) UART0 受信
		reinterpret_cast<void*>(null_task_),	nullptr,	// (19)

		reinterpret_cast<void*>(null_task_),	nullptr,	// (20)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (21) /INT2
		reinterpret_cast<void*>(null_task_),	nullptr,	// (22) タイマＲＪ２
		reinterpret_cast<void*>(null_task_),	nullptr,	// (23) 周期タイマ

		reinterpret_cast<void*>(timer_b_.itask),nullptr,	// (24) タイマＲＢ２
		reinterpret_cast<void*>(null_task_),	nullptr,	// (25) /INT1
		reinterpret_cast<void*>(null_task_),	nullptr,	// (26) /INT3
		reinterpret_cast<void*>(null_task_),	nullptr,	// (27)

		reinterpret_cast<void*>(null_task_),	nullptr,	// (28)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (29) /INT0
		reinterpret_cast<void*>(null_task_),	nullptr,	// (30)
		reinterpret_cast<void*>(null_task_),	nullptr,	// (31)
	};
}

static bool check_key_word_(uint8_t idx, const char* key)
{
	char buff[8];
	if(command_.get_word(idx, sizeof(buff), buff)) {
		if(strcmp(buff, key) == 0) {
			return true;
		}				
	}
	return false;
}

static uint16_t get_hexadecimal_(const char* str)
{
	uint16_t v = 0;
	char ch;
	while((ch = *str++) != 0) {
		v <<= 4;
		if(ch >= '0' && ch <= '9') v |= ch - '0';
		else if(ch >= 'A' && ch <= 'F') v |= ch - 'A' + 10;
		else if(ch >= 'a' && ch <= 'f') v |= ch - 'a' + 10;
		else return 0;
	}
	return v;
}


static void put_hexadecimal_(uint8_t val) {
	val &= 0xf;
	if(val > 9) val += 'A' - 10;
	else val += '0';
	sci_putch(val);	
}


static void put_hexadecimal_byte_(uint8_t val) {
	put_hexadecimal_(val >> 4);
	put_hexadecimal_(val);
}


int main(int argc, char *argv[])
{
	using namespace device;

// クロック関係レジスタ・プロテクト解除
	PRCR.PRC0 = 1;

// 高速オンチップオシレーターへ切り替え(20MHz)
// ※ F_CLK を設定する事（Makefile内）
	OCOCR.HOCOE = 1;
	wait_(1000);
	SCKCR.HSCKSEL = 1;
	CKSTPR.SCKSEL = 1;

	// タイマーＢ初期化
	{
		uint8_t ir_level = 2;
		timer_b_.start_timer(60, ir_level);
	}

	// UART の設定 (P1_4: TXD0[in], P1_5: RXD0[in])
	// ※シリアルライターでは、RXD 端子は、P1_6 となっているので注意！
	{
		utils::PORT_MAP(utils::port_map::P14::TXD0);
		utils::PORT_MAP(utils::port_map::P15::RXD0);
		uint8_t ir_level = 1;
		uart0_.start(19200, ir_level);
	}

	sci_puts("Start R8C FLASH monitor\n");
	command_.set_prompt("# ");

	// LED シグナル用ポートを出力
	PD1.B0 = 1;

	uint8_t cnt = 0;
	while(1) {
		timer_b_.sync();

		if(command_.service()) {
			if(check_key_word_(0, "erase")) {
				bool f = false;
				if(check_key_word_(1, "bank0")) {
					f = flash_.erase(flash_io::data_area::bank0);
				} else if(check_key_word_(1, "bank1")) {
					f = flash_.erase(flash_io::data_area::bank1);
				} else {
					sci_puts("Erase bank error...\n");
					f = true;
				}
				if(!f) {
					sci_puts("Erase error...\n");
				}
			} else if(check_key_word_(0, "r")) {
				char buff[5];
				if(command_.get_word(1, sizeof(buff), buff)) {
					uint16_t ofs = get_hexadecimal_(buff);
					uint8_t v = flash_.read(ofs);
					put_hexadecimal_byte_(v);
					sci_putch('\n');
				}
			} else if(check_key_word_(0, "write")) {
				char buff[5];
				if(command_.get_word(1, sizeof(buff), buff)) {
					uint16_t ofs = get_hexadecimal_(buff);
					if(command_.get_word(2, sizeof(buff), buff)) {
						uint16_t val = get_hexadecimal_(buff);
						if(!flash_.write(ofs, val)) {
							sci_puts("Write error...\n");
						}
					}
				}
			} else if(check_key_word_(0, "?")) {
				sci_puts("erase bank[01]\n");
				sci_puts("r xxxx\n");
				sci_puts("write xxxx yy\n");
			} else {
				const char* p = command_.get_command();
				if(p[0]) {
					sci_puts("command error: ");
					sci_puts(p);
					sci_puts("\n");
				}
			}
		}

		++cnt;
		if(cnt >= 30) {
			cnt = 0;
		}

		if(cnt < 10) P1.B0 = 1;
		else P1.B0 = 0;
	}
}
