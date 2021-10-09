EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L renesas:R8C_M120AN U?
U 1 1 6160BF1D
P 5200 3150
F 0 "U?" H 6750 4300 60  0000 C CNN
F 1 "R8C_M120AN" H 3900 4300 60  0000 C CNN
F 2 "" H 5200 3150 60  0000 C CNN
F 3 "" H 5200 3150 60  0000 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6160DCF8
P 5200 4550
F 0 "#PWR?" H 5200 4300 50  0001 C CNN
F 1 "GND" H 5205 4377 50  0000 C CNN
F 2 "" H 5200 4550 50  0001 C CNN
F 3 "" H 5200 4550 50  0001 C CNN
	1    5200 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6160E4C5
P 5200 1750
F 0 "#PWR?" H 5200 1600 50  0001 C CNN
F 1 "+3.3V" H 5215 1923 50  0000 C CNN
F 2 "" H 5200 1750 50  0001 C CNN
F 3 "" H 5200 1750 50  0001 C CNN
	1    5200 1750
	1    0    0    -1  
$EndComp
$Comp
L akizuki:C C?
U 1 1 6160E63F
P 1050 6700
F 0 "C?" H 1133 6753 60  0000 L CNN
F 1 "0.1uF" H 1133 6647 60  0000 L CNN
F 2 "" V 1050 6700 60  0001 C CNN
F 3 "" V 1050 6700 60  0001 C CNN
	1    1050 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6160E74E
P 1050 6350
F 0 "#PWR?" H 1050 6200 50  0001 C CNN
F 1 "+3.3V" H 1065 6523 50  0000 C CNN
F 2 "" H 1050 6350 50  0001 C CNN
F 3 "" H 1050 6350 50  0001 C CNN
	1    1050 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6160E89B
P 1050 7050
F 0 "#PWR?" H 1050 6800 50  0001 C CNN
F 1 "GND" H 1055 6877 50  0000 C CNN
F 2 "" H 1050 7050 50  0001 C CNN
F 3 "" H 1050 7050 50  0001 C CNN
	1    1050 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6160EAB2
P 8550 1250
F 0 "D?" H 8543 1466 50  0000 C CNN
F 1 "RED" H 8543 1375 50  0000 C CNN
F 2 "" H 8550 1250 50  0001 C CNN
F 3 "~" H 8550 1250 50  0001 C CNN
	1    8550 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6160EF6B
P 8550 1650
F 0 "D?" H 8543 1866 50  0000 C CNN
F 1 "GREEN" H 8543 1775 50  0000 C CNN
F 2 "" H 8550 1650 50  0001 C CNN
F 3 "~" H 8550 1650 50  0001 C CNN
	1    8550 1650
	1    0    0    -1  
$EndComp
$Comp
L akizuki:R R?
U 1 1 6160FC91
P 9050 1250
F 0 "R?" H 9050 1457 50  0000 C CNN
F 1 "1.5K" H 9050 1366 50  0000 C CNN
F 2 "" H 9050 1180 50  0000 C CNN
F 3 "" V 9050 1250 50  0000 C CNN
	1    9050 1250
	1    0    0    -1  
$EndComp
$Comp
L akizuki:R R?
U 1 1 6160FE01
P 9050 1650
F 0 "R?" H 9050 1857 50  0000 C CNN
F 1 "1K" H 9050 1766 50  0000 C CNN
F 2 "" H 9050 1580 50  0000 C CNN
F 3 "" V 9050 1650 50  0000 C CNN
	1    9050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1650 8700 1650
Wire Wire Line
	8700 1250 8900 1250
Wire Wire Line
	9200 1650 9350 1650
Wire Wire Line
	9350 1650 9350 1250
Wire Wire Line
	9350 1250 9200 1250
Wire Wire Line
	9350 1250 9350 1000
Connection ~ 9350 1250
$Comp
L power:+3.3V #PWR?
U 1 1 6161068C
P 9350 1000
F 0 "#PWR?" H 9350 850 50  0001 C CNN
F 1 "+3.3V" H 9365 1173 50  0000 C CNN
F 2 "" H 9350 1000 50  0001 C CNN
F 3 "" H 9350 1000 50  0001 C CNN
	1    9350 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 6161087E
P 7750 1400
F 0 "J?" H 7800 1617 50  0000 C CNN
F 1 "LED_Connect" H 7800 1526 50  0000 C CNN
F 2 "" H 7750 1400 50  0001 C CNN
F 3 "~" H 7750 1400 50  0001 C CNN
	1    7750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1400 8250 1400
Wire Wire Line
	8250 1400 8250 1250
Wire Wire Line
	8250 1250 8400 1250
Wire Wire Line
	8050 1500 8250 1500
Wire Wire Line
	8250 1500 8250 1650
Wire Wire Line
	8250 1650 8400 1650
Wire Wire Line
	7100 2250 7150 2250
Wire Wire Line
	8500 2350 7250 2350
Wire Wire Line
	7150 2350 7150 2450
Wire Wire Line
	7150 2450 7100 2450
Wire Wire Line
	7100 2650 7200 2650
Wire Wire Line
	7200 2650 7200 2450
Wire Wire Line
	7200 2450 8500 2450
Wire Wire Line
	7100 2850 7250 2850
Wire Wire Line
	7250 2850 7250 2550
Wire Wire Line
	7250 2550 8500 2550
Wire Wire Line
	7300 2650 7300 3050
Wire Wire Line
	7300 3050 7100 3050
Wire Wire Line
	8500 2650 7300 2650
Wire Wire Line
	8500 2750 7350 2750
Wire Wire Line
	7350 2750 7350 3250
Wire Wire Line
	7350 3250 7100 3250
Wire Wire Line
	8500 2850 7400 2850
Wire Wire Line
	7400 2850 7400 3450
Wire Wire Line
	7400 3450 7100 3450
Wire Wire Line
	8500 2950 7450 2950
Wire Wire Line
	7450 2950 7450 3650
Wire Wire Line
	7450 3650 7100 3650
Wire Wire Line
	8500 3050 7500 3050
Wire Wire Line
	7500 3050 7500 3850
Wire Wire Line
	7500 3850 7100 3850
Wire Wire Line
	8500 3150 7550 3150
Wire Wire Line
	7550 3150 7550 4050
Wire Wire Line
	7550 4050 7100 4050
$Comp
L Connector_Generic:Conn_01x12 J?
U 1 1 6161D2A4
P 8700 2650
F 0 "J?" H 8780 2642 50  0000 L CNN
F 1 "Conn_01x12" H 8780 2551 50  0000 L CNN
F 2 "" H 8700 2650 50  0001 C CNN
F 3 "~" H 8700 2650 50  0001 C CNN
	1    8700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2150 8400 2150
Wire Wire Line
	8400 2150 8400 2050
Wire Wire Line
	8500 3250 8400 3250
Wire Wire Line
	8400 3250 8400 3350
$Comp
L power:+3.3V #PWR?
U 1 1 61622CB1
P 8400 2050
F 0 "#PWR?" H 8400 1900 50  0001 C CNN
F 1 "+3.3V" H 8415 2223 50  0000 C CNN
F 2 "" H 8400 2050 50  0001 C CNN
F 3 "" H 8400 2050 50  0001 C CNN
	1    8400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61623484
P 8400 3350
F 0 "#PWR?" H 8400 3100 50  0001 C CNN
F 1 "GND" H 8405 3177 50  0000 C CNN
F 2 "" H 8400 3350 50  0001 C CNN
F 3 "" H 8400 3350 50  0001 C CNN
	1    8400 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J?
U 1 1 6162353F
P 1200 2750
F 0 "J?" H 1118 3367 50  0000 C CNN
F 1 "Conn_01x10" H 1200 3250 50  0000 C CNN
F 2 "" H 1200 2750 50  0001 C CNN
F 3 "~" H 1200 2750 50  0001 C CNN
	1    1200 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 2450 2950 2450
Wire Wire Line
	1400 2550 3250 2550
Wire Wire Line
	3250 2550 3250 2650
Wire Wire Line
	3250 2650 3300 2650
Wire Wire Line
	1400 2650 3200 2650
Wire Wire Line
	3200 2650 3200 2850
Wire Wire Line
	3200 2850 3300 2850
Wire Wire Line
	1400 2750 3150 2750
Wire Wire Line
	3150 2750 3150 3050
Wire Wire Line
	3150 3050 3300 3050
Wire Wire Line
	1400 2850 3100 2850
Wire Wire Line
	3100 2850 3100 3250
Wire Wire Line
	3100 3250 3300 3250
Wire Wire Line
	1400 2950 3050 2950
Wire Wire Line
	3050 2950 3050 3450
Wire Wire Line
	3050 3450 3300 3450
Wire Wire Line
	1400 3050 3000 3050
Wire Wire Line
	3000 3050 3000 3650
Wire Wire Line
	3000 3650 3300 3650
Wire Wire Line
	2950 3150 2950 4050
Wire Wire Line
	2950 4050 3300 4050
Wire Wire Line
	2950 3150 1400 3150
Wire Wire Line
	1400 3250 1500 3250
Wire Wire Line
	1500 3250 1500 3350
Wire Wire Line
	1400 2350 1500 2350
Wire Wire Line
	1500 2350 1500 2250
$Comp
L power:GND #PWR?
U 1 1 61635DE3
P 1500 3350
F 0 "#PWR?" H 1500 3100 50  0001 C CNN
F 1 "GND" H 1505 3177 50  0000 C CNN
F 2 "" H 1500 3350 50  0001 C CNN
F 3 "" H 1500 3350 50  0001 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6163602B
P 1500 2250
F 0 "#PWR?" H 1500 2100 50  0001 C CNN
F 1 "+3.3V" H 1515 2423 50  0000 C CNN
F 2 "" H 1500 2250 50  0001 C CNN
F 3 "" H 1500 2250 50  0001 C CNN
	1    1500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2250 7150 1400
Wire Wire Line
	7150 1400 7550 1400
Connection ~ 7150 2250
Wire Wire Line
	7150 2250 8500 2250
Wire Wire Line
	7250 2350 7250 1500
Wire Wire Line
	7250 1500 7550 1500
Connection ~ 7250 2350
Wire Wire Line
	7250 2350 7150 2350
Wire Wire Line
	2950 2450 2950 2050
Connection ~ 2950 2450
Wire Wire Line
	2950 2450 2550 2450
$Comp
L akizuki:R R?
U 1 1 6163C9E5
P 2950 1900
F 0 "R?" V 2904 1970 50  0000 L CNN
F 1 "10K" V 2995 1970 50  0000 L CNN
F 2 "" H 2950 1830 50  0000 C CNN
F 3 "" V 2950 1900 50  0000 C CNN
	1    2950 1900
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6163CD8A
P 2950 1750
F 0 "#PWR?" H 2950 1600 50  0001 C CNN
F 1 "+3.3V" H 2965 1923 50  0000 C CNN
F 2 "" H 2950 1750 50  0001 C CNN
F 3 "" H 2950 1750 50  0001 C CNN
	1    2950 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 6163D599
P 10200 4100
F 0 "J?" H 10250 4417 50  0000 C CNN
F 1 "Serial" H 10250 4326 50  0000 C CNN
F 2 "" H 10200 4100 50  0001 C CNN
F 3 "~" H 10200 4100 50  0001 C CNN
	1    10200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4100 9800 4100
Wire Wire Line
	9800 4100 9800 4300
Wire Wire Line
	10500 4100 10700 4100
Wire Wire Line
	10700 4100 10700 3900
$Comp
L power:+3.3V #PWR?
U 1 1 616425CA
P 10700 3900
F 0 "#PWR?" H 10700 3750 50  0001 C CNN
F 1 "+3.3V" H 10715 4073 50  0000 C CNN
F 2 "" H 10700 3900 50  0001 C CNN
F 3 "" H 10700 3900 50  0001 C CNN
	1    10700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61642F82
P 9800 4300
F 0 "#PWR?" H 9800 4050 50  0001 C CNN
F 1 "GND" H 9805 4127 50  0000 C CNN
F 2 "" H 9800 4300 50  0001 C CNN
F 3 "" H 9800 4300 50  0001 C CNN
	1    9800 4300
	1    0    0    -1  
$EndComp
NoConn ~ 10000 4200
NoConn ~ 10500 4200
$Comp
L akizuki:C-POL C?
U 1 1 6165008E
P 1800 6700
F 0 "C?" H 1883 6753 60  0000 L CNN
F 1 "4.7uF" H 1883 6647 60  0000 L CNN
F 2 "" V 1800 6700 60  0001 C CNN
F 3 "" V 1800 6700 60  0001 C CNN
	1    1800 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6550 1050 6450
Wire Wire Line
	1050 7050 1050 6950
Wire Wire Line
	1800 6550 1800 6450
Wire Wire Line
	1800 6450 1050 6450
Connection ~ 1050 6450
Wire Wire Line
	1050 6450 1050 6350
Wire Wire Line
	1800 6850 1800 6950
Wire Wire Line
	1800 6950 1050 6950
Connection ~ 1050 6950
Wire Wire Line
	1050 6950 1050 6850
$Comp
L Switch:SW_Push SW?
U 1 1 6165F4D4
P 2150 1650
F 0 "SW?" H 2150 1947 50  0000 C CNN
F 1 "~RESET" H 2150 1849 50  0000 C CNN
F 2 "" H 2150 1850 50  0001 C CNN
F 3 "~" H 2150 1850 50  0001 C CNN
	1    2150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1650 2550 1650
Wire Wire Line
	2550 1650 2550 2450
Connection ~ 2550 2450
Wire Wire Line
	2550 2450 1400 2450
Wire Wire Line
	1950 1650 1750 1650
Wire Wire Line
	1750 1650 1750 1850
$Comp
L power:GND #PWR?
U 1 1 616662DE
P 1750 1850
F 0 "#PWR?" H 1750 1600 50  0001 C CNN
F 1 "GND" H 1755 1677 50  0000 C CNN
F 2 "" H 1750 1850 50  0001 C CNN
F 3 "" H 1750 1850 50  0001 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6166671C
P 10300 2200
F 0 "J?" H 10380 2192 50  0000 L CNN
F 1 "POWER" H 10380 2101 50  0000 L CNN
F 2 "" H 10300 2200 50  0001 C CNN
F 3 "~" H 10300 2200 50  0001 C CNN
	1    10300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2200 10000 2200
Wire Wire Line
	10000 2200 10000 2100
Wire Wire Line
	10100 2300 10000 2300
Wire Wire Line
	10000 2300 10000 2400
$Comp
L power:GND #PWR?
U 1 1 6166CD63
P 10000 2400
F 0 "#PWR?" H 10000 2150 50  0001 C CNN
F 1 "GND" H 10005 2227 50  0000 C CNN
F 2 "" H 10000 2400 50  0001 C CNN
F 3 "" H 10000 2400 50  0001 C CNN
	1    10000 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6166D088
P 10000 2100
F 0 "#PWR?" H 10000 1950 50  0001 C CNN
F 1 "+3.3V" H 10015 2273 50  0000 C CNN
F 2 "" H 10000 2100 50  0001 C CNN
F 3 "" H 10000 2100 50  0001 C CNN
	1    10000 2100
	1    0    0    -1  
$EndComp
$Comp
L akizuki:6P-SW SW?
U 1 1 6167C12C
P 8800 4100
F 0 "SW?" H 8800 4447 60  0000 C CNN
F 1 "RUN/FLASH" H 8800 4341 60  0000 C CNN
F 2 "" H 8755 4095 60  0000 C CNN
F 3 "" H 8755 4095 60  0000 C CNN
	1    8800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4100 9200 4100
Wire Wire Line
	9200 4100 9200 4850
Wire Wire Line
	9200 4850 2950 4850
Wire Wire Line
	2950 4850 2950 4050
Connection ~ 2950 4050
Wire Wire Line
	9000 4000 9200 4000
Wire Wire Line
	9200 4000 9200 3750
$Comp
L akizuki:R R?
U 1 1 6168482A
P 9200 3600
F 0 "R?" V 9154 3670 50  0000 L CNN
F 1 "10K" V 9245 3670 50  0000 L CNN
F 2 "" H 9200 3530 50  0000 C CNN
F 3 "" V 9200 3600 50  0000 C CNN
	1    9200 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3450 9200 3300
$Comp
L power:+3.3V #PWR?
U 1 1 6168862A
P 9200 3300
F 0 "#PWR?" H 9200 3150 50  0001 C CNN
F 1 "+3.3V" H 9215 3473 50  0000 C CNN
F 2 "" H 9200 3300 50  0001 C CNN
F 3 "" H 9200 3300 50  0001 C CNN
	1    9200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4200 9100 4200
Wire Wire Line
	9100 4200 9100 4300
$Comp
L power:GND #PWR?
U 1 1 6168C91D
P 9100 4300
F 0 "#PWR?" H 9100 4050 50  0001 C CNN
F 1 "GND" H 9105 4127 50  0000 C CNN
F 2 "" H 9100 4300 50  0001 C CNN
F 3 "" H 9100 4300 50  0001 C CNN
	1    9100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4000 10600 4000
Wire Wire Line
	10600 4000 10600 4650
Wire Wire Line
	10600 4650 8500 4650
Wire Wire Line
	8500 4650 8500 4100
Wire Wire Line
	8500 4100 8600 4100
Text Notes 10500 3950 0    50   ~ 0
TXD
Text Notes 9900 3950 0    50   ~ 0
RXD
Wire Wire Line
	7350 3250 8200 3250
Wire Wire Line
	8200 3250 8200 4000
Wire Wire Line
	8200 4000 8600 4000
Connection ~ 7350 3250
Wire Wire Line
	7400 3450 8100 3450
Wire Wire Line
	8100 3450 8100 4200
Wire Wire Line
	8100 4200 8600 4200
Connection ~ 7400 3450
Wire Wire Line
	7300 3050 7300 4550
Wire Wire Line
	7300 4550 9600 4550
Wire Wire Line
	9600 4550 9600 4000
Wire Wire Line
	9600 4000 10000 4000
Connection ~ 7300 3050
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J?
U 1 1 6169ECD5
P 5200 5500
F 0 "J?" H 5250 5817 50  0000 C CNN
F 1 "I2C" H 5250 5726 50  0000 C CNN
F 2 "" H 5200 5500 50  0001 C CNN
F 3 "~" H 5200 5500 50  0001 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
Text Notes 5800 5700 0    50   ~ 0
SCL\nSDA\n+\nG
Wire Wire Line
	7500 3850 7500 5000
Wire Wire Line
	7500 5000 5600 5000
Wire Wire Line
	5600 5000 5600 5500
Wire Wire Line
	5600 5500 5500 5500
Connection ~ 7500 3850
Wire Wire Line
	7450 3650 7450 5100
Wire Wire Line
	7450 5100 5700 5100
Wire Wire Line
	5700 5100 5700 5400
Wire Wire Line
	5700 5400 5500 5400
Connection ~ 7450 3650
Wire Wire Line
	5600 5000 4800 5000
Wire Wire Line
	4800 5000 4800 5500
Wire Wire Line
	4800 5500 5000 5500
Connection ~ 5600 5000
Wire Wire Line
	5000 5400 4900 5400
Wire Wire Line
	4900 5400 4900 5100
Wire Wire Line
	4900 5100 5700 5100
Connection ~ 5700 5100
Wire Wire Line
	5000 5700 4900 5700
Wire Wire Line
	4900 5700 4900 5900
Wire Wire Line
	4900 5900 5600 5900
Wire Wire Line
	5600 5900 5600 5700
Wire Wire Line
	5600 5700 5500 5700
Wire Wire Line
	5000 5600 4800 5600
Wire Wire Line
	4800 5600 4800 6000
Wire Wire Line
	4800 6000 5700 6000
Wire Wire Line
	5700 6000 5700 5600
Wire Wire Line
	5700 5600 5500 5600
Wire Wire Line
	4800 5600 4600 5600
Wire Wire Line
	4600 5600 4600 5500
Connection ~ 4800 5600
$Comp
L power:+3.3V #PWR?
U 1 1 616E7F01
P 4600 5500
F 0 "#PWR?" H 4600 5350 50  0001 C CNN
F 1 "+3.3V" H 4615 5673 50  0000 C CNN
F 2 "" H 4600 5500 50  0001 C CNN
F 3 "" H 4600 5500 50  0001 C CNN
	1    4600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5900 4600 5900
Wire Wire Line
	4600 5900 4600 6000
Connection ~ 4900 5900
$Comp
L power:GND #PWR?
U 1 1 616EEE9A
P 4600 6000
F 0 "#PWR?" H 4600 5750 50  0001 C CNN
F 1 "GND" H 4605 5827 50  0000 C CNN
F 2 "" H 4600 6000 50  0001 C CNN
F 3 "" H 4600 6000 50  0001 C CNN
	1    4600 6000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
