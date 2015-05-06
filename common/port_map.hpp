#pragma once
//=====================================================================//
/*!	@file
	@brief	ポートマップ・ユーティリティー @n
			Copyright 2015 Kunihito Hiramatsu
	@author	平松邦仁 (hira@rvf-rc45.net)
*/
//=====================================================================//
#include "port.hpp"

namespace utils {

	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
	/*!
		@brief  ポートマップクラス
	*/
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
	class port_map {
	public:

		enum class P10 {
			PORT = 0,
			AN0 = 0,
			TRCIOD = 1,
			KI0 = 2,
		};

		enum class P11 {
			PORT = 0,
			AN1 = 0,
			TRCIOA = 1,
			TRCTRG = 1,
			KI1 = 2,
		};

		enum class P12 {
			PORT = 0,
			AN2 = 0,
			TRCIOB = 1,
			KI2 = 2,
		};

		enum class P13 {
			PORT = 0,
			AN3 = 0,
			TRCIOC = 1,
			KI3 = 2,
		};

		enum class P14 {
			PORT = 0,
			AN4 = 0,
			TXD0 = 1,
			RXD0 = 2,
			INT0 = 3,
			TRCIOB = 4,
		};

		enum class P15 {
			PORT = 0,
			RXD0 = 1,
			TRJIO = 2,
			INT1 = 3,
			VCOUT1 = 4,
		};

		enum class P16 {
			PORT = 0,
			IVREF1 = 0,
			CLK0 = 1,
			TRJO = 2,
			TRCIOB = 3,
		};

		enum class P17 {
			PORT = 0,
			IVCMP1 = 0,
			INT0 = 1,
			TRJIO = 2,
			TRCCLK = 3,
		};

		enum class P33 {
			PORT = 0,
			IVCMP3 = 0,
			TRCCLK = 1,
			INT3 = 2,
		};

		enum class P34 {
			PORT = 0,
			IVREF3 = 0,
			TRCIOC = 1,
			INT3 = 2,
		};

		enum class P35 {
			PORT = 0,
			TRCIOD = 1,
			KI2 = 2,
			VCOUT3 = 3,
		};

		enum class P37 {
			PORT = 0,
			ADTRG = 1,
			TRJO = 2,
			TRCIOD = 3,
		};

		enum class P42 {
			PORT = 0,
			TRBO = 1,
			TXD0 = 2,
			KI3 = 3,
		};

		enum class P45 {
			PORT = 0,
			INT0 = 1,
			ADTRG = 2,
		};

		enum class P46 {
			PORT = 0,
			RXD0 = 1,
			TXD0 = 2,
			INT1 = 3,
			VCOUT1 = 4,
			TRJIO = 5,
		};

		enum class P47 {
			PORT = 0,
			XOUT = 0,
			INT2 = 1,
		};

		void operator () (P10 t) {
			device::PML1.P10SEL = static_cast<uint8_t>(t);
		}

		void operator () (P11 t) {
			device::PML1.P11SEL = static_cast<uint8_t>(t);
		}

		void operator () (P12 t) {
			device::PML1.P12SEL = static_cast<uint8_t>(t);
		}

		void operator () (P13 t) {
			device::PML1.P13SEL = static_cast<uint8_t>(t);
		}

		void operator () (P14 t) {
			device::PMH1E.P14SEL = static_cast<uint8_t>(t) >> 2;
			device::PMH1.P14SEL = static_cast<uint8_t>(t) & 3;
		}

		void operator () (P15 t) {
			device::PMH1E.P15SEL = static_cast<uint8_t>(t) >> 2;
			device::PMH1.P15SEL = static_cast<uint8_t>(t) & 3;
		}

		void operator () (P16 t) {
			device::PMH1.P16SEL = static_cast<uint8_t>(t);
		}

		void operator () (P17 t) {
			device::PMH1.P17SEL = static_cast<uint8_t>(t);
		}

		void operator () (P33 t) {
			device::PML3.P33SEL = static_cast<uint8_t>(t);
		}

		void operator () (P34 t) {
			device::PMH3.P34SEL = static_cast<uint8_t>(t);
		}

		void operator () (P35 t) {
			device::PMH3.P35SEL = static_cast<uint8_t>(t);
		}

		void operator () (P37 t) {
			device::PMH3.P37SEL = static_cast<uint8_t>(t);
		}

		void operator () (P42 t) {
			device::PML4.P42SEL = static_cast<uint8_t>(t);
		}

		void operator () (P45 t) {
			device::PMH4.P45SEL = static_cast<uint8_t>(t);
		}

		void operator () (P46 t) {
			device::PMH4E.P46SEL = static_cast<uint8_t>(t) >> 2;
			device::PMH4.P46SEL = static_cast<uint8_t>(t) & 3;
		}

		void operator () (P47 t) {
			device::PMH4.P47SEL = static_cast<uint8_t>(t);
		}

	};
	static port_map PORT_MAP;
}

