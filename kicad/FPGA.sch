EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:74lvc
LIBS:altera
LIBS:barrel_jack
LIBS:battery
LIBS:beaglebone_black
LIBS:ck
LIBS:conn_power
LIBS:conn_rf
LIBS:conn_rj
LIBS:crystal
LIBS:ddr2_sdram_sodimm
LIBS:epcos
LIBS:epcos_dcc6c
LIBS:fbead
LIBS:fiducial
LIBS:freescale_mcu
LIBS:hackrf_expansion
LIBS:hdmi
LIBS:header
LIBS:hirose
LIBS:hole
LIBS:io_expander
LIBS:lcd_kingtech
LIBS:ltc
LIBS:microphone
LIBS:minicircuits
LIBS:molex
LIBS:mosfet
LIBS:newhaven
LIBS:noritake
LIBS:nxp_micro
LIBS:on_cat24c256
LIBS:on_semi
LIBS:osc
LIBS:passive
LIBS:r_sense
LIBS:regulator
LIBS:rf_antenna
LIBS:rf_lna
LIBS:samtec
LIBS:sd
LIBS:sharebrained
LIBS:supply
LIBS:switch
LIBS:terminal_block
LIBS:ti
LIBS:ti_cc
LIBS:tp
LIBS:trs_jack
LIBS:usb3_esd_son50-10
LIBS:usb3_micro_ab
LIBS:wolfson
LIBS:FrequnecyCounter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "FrequnecyCounter"
Date "2017-07-19"
Rev "01"
Comp "COMLAB"
Comment1 "Author: Lukas Jenni"
Comment2 "Review: "
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L xc6slx9_144 xc6slx9_1
U 3 1 595EA185
P 6025 4200
F 0 "xc6slx9_1" H 6000 5000 50  0000 C CNN
F 1 "xc6slx9_144" H 5950 5075 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 6250 4925 60  0001 C CNN
F 3 "" H 6250 4925 60  0001 C CNN
	3    6025 4200
	1    0    0    -1  
$EndComp
$Comp
L xc6slx9_144 xc6slx9_1
U 5 1 595EA1F7
P 9250 5750
F 0 "xc6slx9_1" H 9225 6000 50  0000 C CNN
F 1 "xc6slx9_144" H 9225 6075 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 9475 6475 60  0001 C CNN
F 3 "" H 9475 6475 60  0001 C CNN
	5    9250 5750
	1    0    0    -1  
$EndComp
$Comp
L xc6slx9_144 xc6slx9_1
U 6 1 595EA238
P 7875 5700
F 0 "xc6slx9_1" H 7875 6150 50  0000 C CNN
F 1 "xc6slx9_144" H 7850 6225 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 8100 6425 60  0001 C CNN
F 3 "" H 8100 6425 60  0001 C CNN
	6    7875 5700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 595E03AA
P 1050 1800
F 0 "#PWR026" H 1050 1650 50  0001 C CNN
F 1 "+3.3V" H 1050 1940 50  0000 C CNN
F 2 "" H 1050 1800 50  0001 C CNN
F 3 "" H 1050 1800 50  0001 C CNN
	1    1050 1800
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 595E03CE
P 1050 1950
F 0 "C23" H 1075 2050 50  0000 L CNN
F 1 "100n" H 1075 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1088 1800 50  0001 C CNN
F 3 "" H 1050 1950 50  0001 C CNN
	1    1050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1800 1550 1800
$Comp
L GND #PWR027
U 1 1 595E07BC
P 1050 2100
F 0 "#PWR027" H 1050 1850 50  0001 C CNN
F 1 "GND" H 1050 1950 50  0000 C CNN
F 2 "" H 1050 2100 50  0001 C CNN
F 3 "" H 1050 2100 50  0001 C CNN
	1    1050 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 595E0A75
P 2550 2000
F 0 "#PWR028" H 2550 1750 50  0001 C CNN
F 1 "GND" H 2550 1850 50  0000 C CNN
F 2 "" H 2550 2000 50  0001 C CNN
F 3 "" H 2550 2000 50  0001 C CNN
	1    2550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2000 1450 2000
Wire Wire Line
	1450 2000 1450 2450
Wire Wire Line
	7950 5400 7950 6000
Connection ~ 7950 5950
Connection ~ 7950 5900
Connection ~ 7950 5850
Connection ~ 7950 5800
Connection ~ 7950 5750
Connection ~ 7950 5700
Connection ~ 7950 5650
Connection ~ 7950 5600
Connection ~ 7950 5550
Connection ~ 7950 5500
Connection ~ 7950 5450
$Comp
L GND #PWR029
U 1 1 595F4E0F
P 7950 6000
F 0 "#PWR029" H 7950 5750 50  0001 C CNN
F 1 "GND" H 7950 5850 50  0000 C CNN
F 2 "" H 7950 6000 50  0001 C CNN
F 3 "" H 7950 6000 50  0001 C CNN
	1    7950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4900 6250 4950
$Comp
L MCP4725 U3
U 1 1 595F72D2
P 6050 2350
F 0 "U3" H 5800 3375 60  0000 C CNN
F 1 "MCP4725" H 5950 3300 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 6050 2350 60  0001 C CNN
F 3 "" H 6050 2350 60  0001 C CNN
	1    6050 2350
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 595F752D
P 4700 1475
F 0 "C19" H 4725 1575 50  0000 L CNN
F 1 "100n" H 4725 1375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4738 1325 50  0001 C CNN
F 3 "" H 4700 1475 50  0001 C CNN
	1    4700 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 1325 5275 1525
$Comp
L GND #PWR030
U 1 1 595F7611
P 4700 1625
F 0 "#PWR030" H 4700 1375 50  0001 C CNN
F 1 "GND" H 4700 1475 50  0000 C CNN
F 2 "" H 4700 1625 50  0001 C CNN
F 3 "" H 4700 1625 50  0001 C CNN
	1    4700 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1625 5650 1625
Wire Wire Line
	5275 1525 5650 1525
Wire Wire Line
	6725 1750 7050 1750
Wire Wire Line
	1450 2450 7050 2450
Wire Wire Line
	7050 2450 7050 1750
Connection ~ 9100 1625
Connection ~ 9300 1625
Connection ~ 9500 1625
$Comp
L +1.2V #PWR031
U 1 1 595F9456
P 9500 1575
F 0 "#PWR031" H 9500 1715 20  0001 C CNN
F 1 "+1.2V" H 9500 1685 30  0000 C CNN
F 2 "" H 9500 1575 60  0000 C CNN
F 3 "" H 9500 1575 60  0000 C CNN
	1    9500 1575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 595F94C4
P 9100 2000
F 0 "#PWR032" H 9100 1750 50  0001 C CNN
F 1 "GND" H 9100 1850 50  0000 C CNN
F 2 "" H 9100 2000 50  0001 C CNN
F 3 "" H 9100 2000 50  0001 C CNN
	1    9100 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 595F9503
P 9300 2000
F 0 "#PWR033" H 9300 1750 50  0001 C CNN
F 1 "GND" H 9300 1850 50  0000 C CNN
F 2 "" H 9300 2000 50  0001 C CNN
F 3 "" H 9300 2000 50  0001 C CNN
	1    9300 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 595F954A
P 9500 2000
F 0 "#PWR034" H 9500 1750 50  0001 C CNN
F 1 "GND" H 9500 1850 50  0000 C CNN
F 2 "" H 9500 2000 50  0001 C CNN
F 3 "" H 9500 2000 50  0001 C CNN
	1    9500 2000
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 595FA09D
P 9100 1125
F 0 "C11" H 9125 1225 50  0000 L CNN
F 1 "4.7u" H 9125 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9138 975 50  0001 C CNN
F 3 "" H 9100 1125 50  0001 C CNN
	1    9100 1125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 595FA136
P 9100 1300
F 0 "#PWR035" H 9100 1050 50  0001 C CNN
F 1 "GND" H 9100 1150 50  0000 C CNN
F 2 "" H 9100 1300 50  0001 C CNN
F 3 "" H 9100 1300 50  0001 C CNN
	1    9100 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 595FA510
P 9300 1300
F 0 "#PWR036" H 9300 1050 50  0001 C CNN
F 1 "GND" H 9300 1150 50  0000 C CNN
F 2 "" H 9300 1300 50  0001 C CNN
F 3 "" H 9300 1300 50  0001 C CNN
	1    9300 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 595FA5A3
P 9500 1300
F 0 "#PWR037" H 9500 1050 50  0001 C CNN
F 1 "GND" H 9500 1150 50  0000 C CNN
F 2 "" H 9500 1300 50  0001 C CNN
F 3 "" H 9500 1300 50  0001 C CNN
	1    9500 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 595FA5ED
P 9700 1300
F 0 "#PWR038" H 9700 1050 50  0001 C CNN
F 1 "GND" H 9700 1150 50  0000 C CNN
F 2 "" H 9700 1300 50  0001 C CNN
F 3 "" H 9700 1300 50  0001 C CNN
	1    9700 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 595FA637
P 9900 1300
F 0 "#PWR039" H 9900 1050 50  0001 C CNN
F 1 "GND" H 9900 1150 50  0000 C CNN
F 2 "" H 9900 1300 50  0001 C CNN
F 3 "" H 9900 1300 50  0001 C CNN
	1    9900 1300
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 595FD1B4
P 3375 7275
F 0 "C24" H 3400 7375 50  0000 L CNN
F 1 "4.7u" H 3400 7175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3413 7125 50  0001 C CNN
F 3 "" H 3375 7275 50  0001 C CNN
	1    3375 7275
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 595FD1BA
P 3575 7275
F 0 "C25" H 3600 7375 50  0000 L CNN
F 1 "0.47u" H 3600 7175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3613 7125 50  0001 C CNN
F 3 "" H 3575 7275 50  0001 C CNN
	1    3575 7275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 595FD1C9
P 3375 7425
F 0 "#PWR040" H 3375 7175 50  0001 C CNN
F 1 "GND" H 3375 7275 50  0000 C CNN
F 2 "" H 3375 7425 50  0001 C CNN
F 3 "" H 3375 7425 50  0001 C CNN
	1    3375 7425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 595FD1CF
P 3575 7425
F 0 "#PWR041" H 3575 7175 50  0001 C CNN
F 1 "GND" H 3575 7275 50  0000 C CNN
F 2 "" H 3575 7425 50  0001 C CNN
F 3 "" H 3575 7425 50  0001 C CNN
	1    3575 7425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 595FD1D5
P 3775 7425
F 0 "#PWR042" H 3775 7175 50  0001 C CNN
F 1 "GND" H 3775 7275 50  0000 C CNN
F 2 "" H 3775 7425 50  0001 C CNN
F 3 "" H 3775 7425 50  0001 C CNN
	1    3775 7425
	1    0    0    -1  
$EndComp
Connection ~ 3775 7125
Connection ~ 3575 7125
Connection ~ 3375 7125
$Comp
L C C27
U 1 1 595FD8AA
P 4300 7300
F 0 "C27" H 4325 7400 50  0000 L CNN
F 1 "4.7u" H 4325 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4338 7150 50  0001 C CNN
F 3 "" H 4300 7300 50  0001 C CNN
	1    4300 7300
	1    0    0    -1  
$EndComp
$Comp
L C C28
U 1 1 595FD8B0
P 4500 7300
F 0 "C28" H 4525 7400 50  0000 L CNN
F 1 "0.47u" H 4525 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4538 7150 50  0001 C CNN
F 3 "" H 4500 7300 50  0001 C CNN
	1    4500 7300
	1    0    0    -1  
$EndComp
$Comp
L C C29
U 1 1 595FD8B6
P 4700 7300
F 0 "C29" H 4725 7400 50  0000 L CNN
F 1 "0.47u" H 4725 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4738 7150 50  0001 C CNN
F 3 "" H 4700 7300 50  0001 C CNN
	1    4700 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 595FD8BC
P 4300 7450
F 0 "#PWR043" H 4300 7200 50  0001 C CNN
F 1 "GND" H 4300 7300 50  0000 C CNN
F 2 "" H 4300 7450 50  0001 C CNN
F 3 "" H 4300 7450 50  0001 C CNN
	1    4300 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 595FD8C2
P 4500 7450
F 0 "#PWR044" H 4500 7200 50  0001 C CNN
F 1 "GND" H 4500 7300 50  0000 C CNN
F 2 "" H 4500 7450 50  0001 C CNN
F 3 "" H 4500 7450 50  0001 C CNN
	1    4500 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 595FD8C8
P 4700 7450
F 0 "#PWR045" H 4700 7200 50  0001 C CNN
F 1 "GND" H 4700 7300 50  0000 C CNN
F 2 "" H 4700 7450 50  0001 C CNN
F 3 "" H 4700 7450 50  0001 C CNN
	1    4700 7450
	1    0    0    -1  
$EndComp
Connection ~ 4700 7150
Connection ~ 4500 7150
Connection ~ 4300 7150
Connection ~ 6650 7150
Connection ~ 6450 7150
Connection ~ 6250 7150
Text HLabel 1900 4275 2    60   Output ~ 0
EN_CHA_FILTA
Text HLabel 1900 4125 2    60   Output ~ 0
EN_CHA_FILTB
Text HLabel 1900 3900 2    60   Output ~ 0
EN_CHB_FILTA
Text HLabel 1900 3975 2    60   Output ~ 0
EN_CHB_FILTB
Wire Wire Line
	9450 5675 9650 5675
Wire Wire Line
	9450 5725 9900 5725
Wire Wire Line
	9450 5775 10125 5775
Wire Wire Line
	9450 5825 10400 5825
Text HLabel 9650 5675 2    60   Input ~ 0
TCK
Text HLabel 9900 5725 2    60   Input ~ 0
TDI
Text HLabel 10400 5825 2    60   Output ~ 0
TDO
Text HLabel 10125 5775 2    60   Input ~ 0
TMS
Text HLabel 1900 4350 2    60   Input ~ 0
Clk_A
Text HLabel 1900 4050 2    60   Input ~ 0
Clk_B
Text HLabel 1900 4200 2    60   Input ~ 0
Ext_Ref_Clk
NoConn ~ 6250 3450
NoConn ~ 6250 3650
NoConn ~ 6250 3800
NoConn ~ 6250 3850
NoConn ~ 6250 3900
NoConn ~ 6250 4500
NoConn ~ 6250 4550
NoConn ~ 6250 4600
NoConn ~ 6250 4650
NoConn ~ 6250 4700
NoConn ~ 6250 4800
NoConn ~ 1375 3700
NoConn ~ 1375 3750
NoConn ~ 1375 3800
NoConn ~ 1375 3850
NoConn ~ 1375 3900
NoConn ~ 1375 3950
NoConn ~ 8900 3650
NoConn ~ 8900 3700
NoConn ~ 8900 3750
NoConn ~ 8900 3800
NoConn ~ 8900 4400
NoConn ~ 8900 4500
NoConn ~ 8900 4600
NoConn ~ 8900 4650
NoConn ~ 3825 3825
NoConn ~ 3825 4025
NoConn ~ 3825 4225
NoConn ~ 3825 3925
NoConn ~ 3825 4825
$Comp
L C C30
U 1 1 596334CA
P 5200 7300
F 0 "C30" H 5225 7400 50  0000 L CNN
F 1 "4.7u" H 5225 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5238 7150 50  0001 C CNN
F 3 "" H 5200 7300 50  0001 C CNN
	1    5200 7300
	1    0    0    -1  
$EndComp
$Comp
L C C31
U 1 1 596334D1
P 5400 7300
F 0 "C31" H 5425 7400 50  0000 L CNN
F 1 "0.47u" H 5425 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5438 7150 50  0001 C CNN
F 3 "" H 5400 7300 50  0001 C CNN
	1    5400 7300
	1    0    0    -1  
$EndComp
$Comp
L C C32
U 1 1 596334D8
P 5600 7300
F 0 "C32" H 5625 7400 50  0000 L CNN
F 1 "0.47u" H 5625 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5638 7150 50  0001 C CNN
F 3 "" H 5600 7300 50  0001 C CNN
	1    5600 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 596334DF
P 5200 7450
F 0 "#PWR046" H 5200 7200 50  0001 C CNN
F 1 "GND" H 5200 7300 50  0000 C CNN
F 2 "" H 5200 7450 50  0001 C CNN
F 3 "" H 5200 7450 50  0001 C CNN
	1    5200 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 596334E5
P 5400 7450
F 0 "#PWR047" H 5400 7200 50  0001 C CNN
F 1 "GND" H 5400 7300 50  0000 C CNN
F 2 "" H 5400 7450 50  0001 C CNN
F 3 "" H 5400 7450 50  0001 C CNN
	1    5400 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 596334EB
P 5600 7450
F 0 "#PWR048" H 5600 7200 50  0001 C CNN
F 1 "GND" H 5600 7300 50  0000 C CNN
F 2 "" H 5600 7450 50  0001 C CNN
F 3 "" H 5600 7450 50  0001 C CNN
	1    5600 7450
	1    0    0    -1  
$EndComp
Connection ~ 5600 7150
Connection ~ 5400 7150
Connection ~ 5200 7150
$Comp
L C C33
U 1 1 596339A0
P 6250 7300
F 0 "C33" H 6275 7400 50  0000 L CNN
F 1 "4.7u" H 6275 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6288 7150 50  0001 C CNN
F 3 "" H 6250 7300 50  0001 C CNN
	1    6250 7300
	1    0    0    -1  
$EndComp
$Comp
L C C34
U 1 1 596339A7
P 6450 7300
F 0 "C34" H 6475 7400 50  0000 L CNN
F 1 "0.47u" H 6475 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6488 7150 50  0001 C CNN
F 3 "" H 6450 7300 50  0001 C CNN
	1    6450 7300
	1    0    0    -1  
$EndComp
$Comp
L C C35
U 1 1 596339AE
P 6650 7300
F 0 "C35" H 6675 7400 50  0000 L CNN
F 1 "0.47u" H 6675 7200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6688 7150 50  0001 C CNN
F 3 "" H 6650 7300 50  0001 C CNN
	1    6650 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 596339B5
P 6250 7450
F 0 "#PWR049" H 6250 7200 50  0001 C CNN
F 1 "GND" H 6250 7300 50  0000 C CNN
F 2 "" H 6250 7450 50  0001 C CNN
F 3 "" H 6250 7450 50  0001 C CNN
	1    6250 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 596339BB
P 6450 7450
F 0 "#PWR050" H 6450 7200 50  0001 C CNN
F 1 "GND" H 6450 7300 50  0000 C CNN
F 2 "" H 6450 7450 50  0001 C CNN
F 3 "" H 6450 7450 50  0001 C CNN
	1    6450 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 596339C1
P 6650 7450
F 0 "#PWR051" H 6650 7200 50  0001 C CNN
F 1 "GND" H 6650 7300 50  0000 C CNN
F 2 "" H 6650 7450 50  0001 C CNN
F 3 "" H 6650 7450 50  0001 C CNN
	1    6650 7450
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 59637708
P 9300 1125
F 0 "C12" H 9325 1225 50  0000 L CNN
F 1 "4.7u" H 9325 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9338 975 50  0001 C CNN
F 3 "" H 9300 1125 50  0001 C CNN
	1    9300 1125
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 5963778A
P 9500 1125
F 0 "C13" H 9525 1225 50  0000 L CNN
F 1 "4.7u" H 9525 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9538 975 50  0001 C CNN
F 3 "" H 9500 1125 50  0001 C CNN
	1    9500 1125
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 59637809
P 9700 1125
F 0 "C14" H 9725 1225 50  0000 L CNN
F 1 "4.7u" H 9725 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9738 975 50  0001 C CNN
F 3 "" H 9700 1125 50  0001 C CNN
	1    9700 1125
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5963788F
P 9900 1125
F 0 "C15" H 9925 1225 50  0000 L CNN
F 1 "4.7u" H 9925 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9938 975 50  0001 C CNN
F 3 "" H 9900 1125 50  0001 C CNN
	1    9900 1125
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 59637914
P 10100 1125
F 0 "C16" H 10125 1225 50  0000 L CNN
F 1 "4.7u" H 10125 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10138 975 50  0001 C CNN
F 3 "" H 10100 1125 50  0001 C CNN
	1    10100 1125
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 596379A0
P 10300 1125
F 0 "C17" H 10325 1225 50  0000 L CNN
F 1 "4.7u" H 10325 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10338 975 50  0001 C CNN
F 3 "" H 10300 1125 50  0001 C CNN
	1    10300 1125
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 59637AAA
P 10500 1125
F 0 "C18" H 10525 1225 50  0000 L CNN
F 1 "0.47u" H 10525 1025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10538 975 50  0001 C CNN
F 3 "" H 10500 1125 50  0001 C CNN
	1    10500 1125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 59637DA6
P 10100 1300
F 0 "#PWR052" H 10100 1050 50  0001 C CNN
F 1 "GND" H 10100 1150 50  0000 C CNN
F 2 "" H 10100 1300 50  0001 C CNN
F 3 "" H 10100 1300 50  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 59637E23
P 10300 1300
F 0 "#PWR053" H 10300 1050 50  0001 C CNN
F 1 "GND" H 10300 1150 50  0000 C CNN
F 2 "" H 10300 1300 50  0001 C CNN
F 3 "" H 10300 1300 50  0001 C CNN
	1    10300 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 59637EA0
P 10500 1300
F 0 "#PWR054" H 10500 1050 50  0001 C CNN
F 1 "GND" H 10500 1150 50  0000 C CNN
F 2 "" H 10500 1300 50  0001 C CNN
F 3 "" H 10500 1300 50  0001 C CNN
	1    10500 1300
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 59637FCC
P 9100 1825
F 0 "C20" H 9125 1925 50  0000 L CNN
F 1 "4.7u" H 9125 1725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9138 1675 50  0001 C CNN
F 3 "" H 9100 1825 50  0001 C CNN
	1    9100 1825
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 59638068
P 9300 1825
F 0 "C21" H 9325 1925 50  0000 L CNN
F 1 "4.7u" H 9325 1725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9338 1675 50  0001 C CNN
F 3 "" H 9300 1825 50  0001 C CNN
	1    9300 1825
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 59638196
P 9500 1825
F 0 "C22" H 9525 1925 50  0000 L CNN
F 1 "0.47u" H 9525 1725 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9538 1675 50  0001 C CNN
F 3 "" H 9500 1825 50  0001 C CNN
	1    9500 1825
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5963EF39
P 1400 6575
F 0 "D2" H 1400 6675 50  0000 C CNN
F 1 "LED" H 1400 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 1400 6575 50  0001 C CNN
F 3 "" H 1400 6575 50  0001 C CNN
	1    1400 6575
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR055
U 1 1 5963EF40
P 1400 6750
F 0 "#PWR055" H 1400 6500 50  0001 C CNN
F 1 "GND" H 1400 6600 50  0000 C CNN
F 2 "" H 1400 6750 50  0001 C CNN
F 3 "" H 1400 6750 50  0001 C CNN
	1    1400 6750
	1    0    0    -1  
$EndComp
Text GLabel 1400 6100 1    60   Input ~ 0
WORK_LED
Wire Wire Line
	1400 6100 1400 6125
$Comp
L R R15
U 1 1 5963EF49
P 1400 6275
F 0 "R15" V 1480 6275 50  0000 C CNN
F 1 "680R" V 1400 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1330 6275 50  0001 C CNN
F 3 "" H 1400 6275 50  0001 C CNN
	1    1400 6275
	1    0    0    -1  
$EndComp
NoConn ~ 3825 4325
NoConn ~ 3825 4725
NoConn ~ 8900 4700
NoConn ~ 6250 4400
NoConn ~ 3825 3725
NoConn ~ 1375 3650
$Comp
L GND #PWR056
U 1 1 5967BC1C
P 5650 1975
F 0 "#PWR056" H 5650 1725 50  0001 C CNN
F 1 "GND" H 5650 1825 50  0000 C CNN
F 2 "" H 5650 1975 50  0001 C CNN
F 3 "" H 5650 1975 50  0001 C CNN
	1    5650 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3700 6600 3700
Text GLabel 6600 3700 2    60   Output ~ 0
WORK_LED
Text GLabel 6675 3375 2    60   Output ~ 0
DONE_LED
$Comp
L LED D1
U 1 1 5968247A
P 1025 6575
F 0 "D1" H 1025 6675 50  0000 C CNN
F 1 "LED" H 1025 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 1025 6575 50  0001 C CNN
F 3 "" H 1025 6575 50  0001 C CNN
	1    1025 6575
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR057
U 1 1 59682480
P 1025 6750
F 0 "#PWR057" H 1025 6500 50  0001 C CNN
F 1 "GND" H 1025 6600 50  0000 C CNN
F 2 "" H 1025 6750 50  0001 C CNN
F 3 "" H 1025 6750 50  0001 C CNN
	1    1025 6750
	1    0    0    -1  
$EndComp
Text GLabel 1025 6100 1    60   Input ~ 0
DONE_LED
Wire Wire Line
	1025 6100 1025 6125
$Comp
L R R14
U 1 1 59682489
P 1025 6275
F 0 "R14" V 1105 6275 50  0000 C CNN
F 1 "680R" V 1025 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 955 6275 50  0001 C CNN
F 3 "" H 1025 6275 50  0001 C CNN
	1    1025 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1325 4700 1300
Wire Wire Line
	4700 1325 5275 1325
Wire Wire Line
	2550 1800 2700 1800
Wire Wire Line
	1375 3600 1525 3600
$Comp
L GND #PWR058
U 1 1 5969B431
P 9450 5875
F 0 "#PWR058" H 9450 5625 50  0001 C CNN
F 1 "GND" H 9450 5725 50  0000 C CNN
F 2 "" H 9450 5875 50  0001 C CNN
F 3 "" H 9450 5875 50  0001 C CNN
	1    9450 5875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 5969C77D
P 1525 3600
F 0 "#PWR059" H 1525 3350 50  0001 C CNN
F 1 "GND" H 1525 3450 50  0000 C CNN
F 2 "" H 1525 3600 50  0001 C CNN
F 3 "" H 1525 3600 50  0001 C CNN
	1    1525 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1850 5650 1850
Wire Wire Line
	4100 1750 5650 1750
$Comp
L R R11
U 1 1 596C0ACD
P 6600 3150
F 0 "R11" V 6680 3150 50  0000 C CNN
F 1 "4.7k" V 6600 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6530 3150 50  0001 C CNN
F 3 "" H 6600 3150 50  0001 C CNN
	1    6600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1625 9100 1675
Wire Wire Line
	9300 1625 9300 1675
Wire Wire Line
	9500 1575 9500 1675
Wire Wire Line
	9100 975  9100 925 
Wire Wire Line
	9300 925  9300 975 
Wire Wire Line
	9500 925  9500 975 
Wire Wire Line
	9700 925  9700 975 
Wire Wire Line
	9900 925  9900 975 
Wire Wire Line
	10100 925  10100 975 
Wire Wire Line
	10300 925  10300 975 
Wire Wire Line
	9100 2000 9100 1975
Wire Wire Line
	9300 2000 9300 1975
Wire Wire Line
	9500 2000 9500 1975
Wire Wire Line
	9100 1300 9100 1275
Wire Wire Line
	9300 1300 9300 1275
Wire Wire Line
	9500 1300 9500 1275
Wire Wire Line
	9700 1300 9700 1275
Wire Wire Line
	9900 1300 9900 1275
Wire Wire Line
	10100 1300 10100 1275
Wire Wire Line
	10300 1300 10300 1275
Wire Wire Line
	10500 1300 10500 1275
Wire Wire Line
	8900 1625 9500 1625
Wire Wire Line
	8900 1425 8950 1425
Wire Wire Line
	8950 1425 8950 1625
Connection ~ 8950 1625
Wire Wire Line
	8900 1475 8950 1475
Connection ~ 8950 1475
Wire Wire Line
	8900 1525 8950 1525
Connection ~ 8950 1525
Wire Wire Line
	8900 1575 8950 1575
Connection ~ 8950 1575
Wire Wire Line
	7400 4850 6250 4850
$Comp
L R R13
U 1 1 596A8B13
P 7400 4575
F 0 "R13" V 7480 4575 50  0000 C CNN
F 1 "4.7k" V 7400 4575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7330 4575 50  0001 C CNN
F 3 "" H 7400 4575 50  0001 C CNN
	1    7400 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3550 7475 3550
Wire Wire Line
	7475 3550 7475 3300
$Comp
L R R12
U 1 1 596D6E0C
P 7475 3150
F 0 "R12" V 7555 3150 50  0000 C CNN
F 1 "4.7k" V 7475 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0612" V 7405 3150 50  0001 C CNN
F 3 "" H 7475 3150 50  0001 C CNN
	1    7475 3150
	1    0    0    -1  
$EndComp
Text HLabel 4650 4450 2    60   Input ~ 0
RXD
Text HLabel 4650 4350 2    60   Output ~ 0
TXD
$Comp
L xc6slx9_144 xc6slx9_1
U 2 1 595EA156
P 3425 4250
F 0 "xc6slx9_1" H 3400 5050 50  0000 C CNN
F 1 "xc6slx9_144" H 3350 5125 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 3650 4975 60  0001 C CNN
F 3 "" H 3650 4975 60  0001 C CNN
	2    3425 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3300 6600 3500
Wire Wire Line
	6600 3500 6250 3500
Wire Wire Line
	6675 3375 6600 3375
Connection ~ 6600 3375
Wire Wire Line
	6250 3600 6325 3600
Wire Wire Line
	6325 3350 6325 4950
Connection ~ 6325 3950
Wire Wire Line
	6325 4950 6250 4950
$Comp
L LED D3
U 1 1 596F8787
P 1750 6575
F 0 "D3" H 1750 6675 50  0000 C CNN
F 1 "LED" H 1750 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 1750 6575 50  0001 C CNN
F 3 "" H 1750 6575 50  0001 C CNN
	1    1750 6575
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR060
U 1 1 596F878E
P 1750 6750
F 0 "#PWR060" H 1750 6500 50  0001 C CNN
F 1 "GND" H 1750 6600 50  0000 C CNN
F 2 "" H 1750 6750 50  0001 C CNN
F 3 "" H 1750 6750 50  0001 C CNN
	1    1750 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6100 1750 6125
$Comp
L R R16
U 1 1 596F8795
P 1750 6275
F 0 "R16" V 1830 6275 50  0000 C CNN
F 1 "680R" V 1750 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1680 6275 50  0001 C CNN
F 3 "" H 1750 6275 50  0001 C CNN
	1    1750 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4750 7400 4750
Wire Wire Line
	7400 4725 7400 4850
Connection ~ 7400 4750
Wire Wire Line
	6525 3900 6850 3900
Wire Wire Line
	6600 4000 6850 4000
Text GLabel 1750 6100 1    60   Input ~ 0
LED0
Text GLabel 2050 6100 1    60   Input ~ 0
LED1
$Comp
L LED D4
U 1 1 5971050F
P 2050 6575
F 0 "D4" H 2050 6675 50  0000 C CNN
F 1 "LED" H 2050 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 2050 6575 50  0001 C CNN
F 3 "" H 2050 6575 50  0001 C CNN
	1    2050 6575
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR061
U 1 1 59710515
P 2050 6750
F 0 "#PWR061" H 2050 6500 50  0001 C CNN
F 1 "GND" H 2050 6600 50  0000 C CNN
F 2 "" H 2050 6750 50  0001 C CNN
F 3 "" H 2050 6750 50  0001 C CNN
	1    2050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6100 2050 6125
$Comp
L R R17
U 1 1 5971051C
P 2050 6275
F 0 "R17" V 2130 6275 50  0000 C CNN
F 1 "680R" V 2050 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1980 6275 50  0001 C CNN
F 3 "" H 2050 6275 50  0001 C CNN
	1    2050 6275
	1    0    0    -1  
$EndComp
Text GLabel 6850 3900 2    60   Output ~ 0
LED0
Text GLabel 6850 4000 2    60   Output ~ 0
LED1
$Comp
L AOCJY1-100MHz G1
U 1 1 59716B61
P 2050 2300
F 0 "G1" H 1650 3050 60  0000 C CNN
F 1 "AOCJY1-100MHz" H 2000 2950 60  0000 C CNN
F 2 "Footprints_LJ:Crystal_smd_4pin_20.8x13.2" H 2050 2300 60  0001 C CNN
F 3 "" H 2050 2300 60  0001 C CNN
	1    2050 2300
	1    0    0    -1  
$EndComp
NoConn ~ 3825 4075
Wire Wire Line
	4450 4075 4225 4075
Wire Wire Line
	3825 4175 4450 4175
Text GLabel 4100 1750 0    60   Input ~ 0
SCL_DAC
Text GLabel 4100 1850 0    60   Input ~ 0
SDA_DAC
Text GLabel 4450 4075 2    60   Output ~ 0
SDA_DAC
Text GLabel 4450 4175 2    60   Output ~ 0
SCL_DAC
Wire Wire Line
	6600 4000 6600 4050
Wire Wire Line
	6600 4050 6250 4050
Wire Wire Line
	6525 3900 6525 4000
Wire Wire Line
	6525 4000 6250 4000
NoConn ~ 8900 3600
NoConn ~ 3825 3975
NoConn ~ 3825 3875
NoConn ~ 3825 3775
NoConn ~ 3825 3675
NoConn ~ 3825 4475
NoConn ~ 3825 4675
NoConn ~ 3825 4775
Wire Wire Line
	3825 4125 4225 4125
Wire Wire Line
	4225 4125 4225 4075
NoConn ~ 6250 3750
NoConn ~ 6250 4450
NoConn ~ 3825 4275
NoConn ~ 3825 4575
$Comp
L R R8
U 1 1 596C9503
P 4200 1425
F 0 "R8" V 4280 1425 50  0000 C CNN
F 1 "4.7k" V 4200 1425 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4130 1425 50  0001 C CNN
F 3 "" H 4200 1425 50  0001 C CNN
	1    4200 1425
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 596C95DC
P 4400 1525
F 0 "R9" V 4480 1525 50  0000 C CNN
F 1 "4.7k" V 4400 1525 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4330 1525 50  0001 C CNN
F 3 "" H 4400 1525 50  0001 C CNN
	1    4400 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1275 4200 1200
Wire Wire Line
	4200 1200 4400 1200
Wire Wire Line
	4400 1200 4400 1375
Wire Wire Line
	4300 1100 4300 1200
Connection ~ 4300 1200
Wire Wire Line
	4200 1575 4200 1750
Connection ~ 4200 1750
Wire Wire Line
	4400 1675 4400 1850
Connection ~ 4400 1850
$Comp
L xc6slx9_144 xc6slx9_1
U 7 1 595EA267
P 8750 1400
F 0 "xc6slx9_1" H 8625 1750 50  0000 C CNN
F 1 "xc6slx9_144" H 8600 1825 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 8975 2125 60  0001 C CNN
F 3 "" H 8975 2125 60  0001 C CNN
	7    8750 1400
	1    0    0    -1  
$EndComp
Connection ~ 8950 1425
$Comp
L Stiftleiste_2x10Pm_R2.54 X1
U 1 1 597078D8
P 5250 5975
F 0 "X1" H 5300 6525 60  0000 C CNN
F 1 "Stiftleiste_2x10Pm_R2.54" H 5250 5375 60  0000 C CNN
F 2 "Footprints_LJ:Stiftleiste_2x10Pm_R2.54" H 5250 5975 60  0001 C CNN
F 3 "" H 5250 5975 60  0001 C CNN
	1    5250 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 7150 6650 7125
Wire Wire Line
	6250 7150 6650 7150
Wire Wire Line
	5600 7150 5600 7125
Wire Wire Line
	5200 7150 5600 7150
Wire Wire Line
	4300 7150 4700 7150
Wire Wire Line
	4700 7150 4700 7125
$Comp
L C C26
U 1 1 595FD1C0
P 3775 7275
F 0 "C26" H 3800 7375 50  0000 L CNN
F 1 "0.47u" H 3800 7175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3813 7125 50  0001 C CNN
F 3 "" H 3775 7275 50  0001 C CNN
	1    3775 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 7125 3775 7125
Wire Wire Line
	3775 7125 3775 7100
$Comp
L +3V3_FPGA #PWR068
U 1 1 5971EC0E
P 9100 4725
F 0 "#PWR068" H 9100 4575 50  0001 C CNN
F 1 "+3V3_FPGA" H 9100 4865 50  0000 C CNN
F 2 "" H 9100 4725 50  0001 C CNN
F 3 "" H 9100 4725 50  0001 C CNN
	1    9100 4725
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR069
U 1 1 5971EC9A
P 1575 4875
F 0 "#PWR069" H 1575 4725 50  0001 C CNN
F 1 "+3V3_FPGA" H 1575 5015 50  0000 C CNN
F 2 "" H 1575 4875 50  0001 C CNN
F 3 "" H 1575 4875 50  0001 C CNN
	1    1575 4875
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR070
U 1 1 5971F302
P 7400 4400
F 0 "#PWR070" H 7400 4250 50  0001 C CNN
F 1 "+3V3_FPGA" H 7400 4540 50  0000 C CNN
F 2 "" H 7400 4400 50  0001 C CNN
F 3 "" H 7400 4400 50  0001 C CNN
	1    7400 4400
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR072
U 1 1 5971F636
P 4700 7125
F 0 "#PWR072" H 4700 6975 50  0001 C CNN
F 1 "+3V3_FPGA" H 4700 7265 50  0000 C CNN
F 2 "" H 4700 7125 50  0001 C CNN
F 3 "" H 4700 7125 50  0001 C CNN
	1    4700 7125
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR073
U 1 1 5971F6C2
P 5600 7125
F 0 "#PWR073" H 5600 6975 50  0001 C CNN
F 1 "+3V3_FPGA" H 5600 7265 50  0000 C CNN
F 2 "" H 5600 7125 50  0001 C CNN
F 3 "" H 5600 7125 50  0001 C CNN
	1    5600 7125
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR074
U 1 1 5971F74E
P 6650 7125
F 0 "#PWR074" H 6650 6975 50  0001 C CNN
F 1 "+3V3_FPGA" H 6650 7265 50  0000 C CNN
F 2 "" H 6650 7125 50  0001 C CNN
F 3 "" H 6650 7125 50  0001 C CNN
	1    6650 7125
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR075
U 1 1 5971F9F6
P 7475 3000
F 0 "#PWR075" H 7475 2850 50  0001 C CNN
F 1 "+3V3_FPGA" H 7475 3140 50  0000 C CNN
F 2 "" H 7475 3000 50  0001 C CNN
F 3 "" H 7475 3000 50  0001 C CNN
	1    7475 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR076
U 1 1 5971FA82
P 6600 3000
F 0 "#PWR076" H 6600 2850 50  0001 C CNN
F 1 "+3V3_FPGA" H 6600 3140 50  0000 C CNN
F 2 "" H 6600 3000 50  0001 C CNN
F 3 "" H 6600 3000 50  0001 C CNN
	1    6600 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR077
U 1 1 5971FD2A
P 4300 1100
F 0 "#PWR077" H 4300 950 50  0001 C CNN
F 1 "+3V3_FPGA" H 4300 1240 50  0000 C CNN
F 2 "" H 4300 1100 50  0001 C CNN
F 3 "" H 4300 1100 50  0001 C CNN
	1    4300 1100
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR078
U 1 1 5972013B
P 10500 900
F 0 "#PWR078" H 10500 750 50  0001 C CNN
F 1 "+3V3_FPGA" H 10500 1040 50  0000 C CNN
F 2 "" H 10500 900 50  0001 C CNN
F 3 "" H 10500 900 50  0001 C CNN
	1    10500 900 
	1    0    0    -1  
$EndComp
Text GLabel 5150 5525 0    60   Input ~ 0
SCL_DAC
Text GLabel 5550 5525 2    60   Input ~ 0
SDA_DAC
Text GLabel 10275 3675 2    60   Output ~ 0
TP1
Text GLabel 10275 3775 2    60   Output ~ 0
TP2
Text GLabel 10275 3875 2    60   Output ~ 0
TP3
Text GLabel 10275 3975 2    60   Output ~ 0
TP4
Text GLabel 10275 4075 2    60   Output ~ 0
TP5
Text GLabel 10275 4175 2    60   Output ~ 0
TP6
Text GLabel 10275 4275 2    60   Output ~ 0
TP7
Text GLabel 10275 4375 2    60   Output ~ 0
TP8
Wire Wire Line
	8900 3850 9950 3850
Wire Wire Line
	8900 3900 10000 3900
Wire Wire Line
	8900 3950 10050 3950
Wire Wire Line
	8900 4000 10050 4000
Wire Wire Line
	10050 3950 10050 3875
Wire Wire Line
	10000 3900 10000 3775
Wire Wire Line
	8900 4050 10050 4050
Wire Wire Line
	10050 4000 10050 3975
Wire Wire Line
	10050 3975 10275 3975
Wire Wire Line
	10050 4050 10050 4075
Wire Wire Line
	10050 4075 10275 4075
Wire Wire Line
	10050 3875 10275 3875
Wire Wire Line
	10000 3775 10275 3775
Wire Wire Line
	9950 3850 9950 3675
Wire Wire Line
	9950 3675 10275 3675
Wire Wire Line
	8900 4100 10050 4100
Wire Wire Line
	10050 4100 10050 4175
Wire Wire Line
	10050 4175 10275 4175
Wire Wire Line
	10000 4150 10000 4275
Wire Wire Line
	8900 4150 10000 4150
Wire Wire Line
	10000 4275 10275 4275
Wire Wire Line
	10275 4375 9950 4375
Wire Wire Line
	9950 4375 9950 4200
Wire Wire Line
	9950 4200 8900 4200
Text GLabel 4900 5625 0    60   Output ~ 0
TP1
Text GLabel 5800 5625 2    60   Output ~ 0
TP2
Text GLabel 4900 5725 0    60   Output ~ 0
TP3
Text GLabel 5800 5725 2    60   Output ~ 0
TP4
Text GLabel 4900 5825 0    60   Output ~ 0
TP5
Text GLabel 5800 5825 2    60   Output ~ 0
TP6
Text GLabel 4900 5925 0    60   Output ~ 0
TP7
Text GLabel 5800 5925 2    60   Output ~ 0
TP8
Wire Wire Line
	5150 5625 4900 5625
Wire Wire Line
	5150 5825 4900 5825
Wire Wire Line
	4900 5925 5150 5925
Wire Wire Line
	5550 5925 5800 5925
Wire Wire Line
	5800 5825 5550 5825
Wire Wire Line
	5550 5725 5800 5725
Wire Wire Line
	5800 5625 5550 5625
Wire Wire Line
	5150 5725 4900 5725
NoConn ~ 1375 4400
NoConn ~ 1375 4450
NoConn ~ 1375 4500
NoConn ~ 1375 4550
NoConn ~ 1375 4600
NoConn ~ 1375 4650
NoConn ~ 1375 4700
NoConn ~ 1375 4750
NoConn ~ 1375 4800
$Comp
L +3V3_FPGA #PWR079
U 1 1 5973F5C6
P 4700 1300
F 0 "#PWR079" H 4700 1150 50  0001 C CNN
F 1 "+3V3_FPGA" H 4700 1440 50  0000 C CNN
F 2 "" H 4700 1300 50  0001 C CNN
F 3 "" H 4700 1300 50  0001 C CNN
	1    4700 1300
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR080
U 1 1 5973FE95
P 6325 3350
F 0 "#PWR080" H 6325 3200 50  0001 C CNN
F 1 "+3V3_FPGA" H 6325 3490 50  0000 C CNN
F 2 "" H 6325 3350 50  0001 C CNN
F 3 "" H 6325 3350 50  0001 C CNN
	1    6325 3350
	1    0    0    -1  
$EndComp
$Comp
L LED D11
U 1 1 59745364
P 725 6575
F 0 "D11" H 725 6675 50  0000 C CNN
F 1 "LED" H 725 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 725 6575 50  0001 C CNN
F 3 "" H 725 6575 50  0001 C CNN
	1    725  6575
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR081
U 1 1 5974536A
P 725 6750
F 0 "#PWR081" H 725 6500 50  0001 C CNN
F 1 "GND" H 725 6600 50  0000 C CNN
F 2 "" H 725 6750 50  0001 C CNN
F 3 "" H 725 6750 50  0001 C CNN
	1    725  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	725  6100 725  6125
$Comp
L R R39
U 1 1 59745372
P 725 6275
F 0 "R39" V 805 6275 50  0000 C CNN
F 1 "680R" V 725 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 655 6275 50  0001 C CNN
F 3 "" H 725 6275 50  0001 C CNN
	1    725  6275
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR082
U 1 1 597454BF
P 725 6100
F 0 "#PWR082" H 725 5950 50  0001 C CNN
F 1 "+3V3" H 725 6240 50  0000 C CNN
F 2 "" H 725 6100 50  0001 C CNN
F 3 "" H 725 6100 50  0001 C CNN
	1    725  6100
	1    0    0    -1  
$EndComp
NoConn ~ 1375 4850
NoConn ~ 5550 6325
NoConn ~ 5550 6425
NoConn ~ 5150 6425
NoConn ~ 5150 6325
Wire Wire Line
	7400 4400 7400 4425
Wire Wire Line
	8950 925  8950 1375
Wire Wire Line
	8950 1375 8900 1375
Wire Wire Line
	8900 1325 8950 1325
Connection ~ 8950 1325
Wire Wire Line
	8900 1275 8950 1275
Connection ~ 8950 1275
Wire Wire Line
	8900 1225 8950 1225
Connection ~ 8950 1225
Wire Wire Line
	8900 1175 8950 1175
Connection ~ 8950 1175
Wire Wire Line
	8950 925  10500 925 
Connection ~ 9100 925 
Connection ~ 9300 925 
Connection ~ 9500 925 
Connection ~ 9700 925 
Connection ~ 9900 925 
Connection ~ 10100 925 
Wire Wire Line
	10500 900  10500 975 
Connection ~ 10300 925 
Connection ~ 10500 925 
$Comp
L xc6slx9_144 xc6slx9_1
U 4 1 595EA1C2
P 8625 4075
F 0 "xc6slx9_1" H 8600 4875 50  0000 C CNN
F 1 "xc6slx9_144" H 8550 4950 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 8850 4800 60  0001 C CNN
F 3 "" H 8850 4800 60  0001 C CNN
	4    8625 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4750 9100 4750
Wire Wire Line
	8900 4800 9100 4800
Wire Wire Line
	9100 4725 9100 4850
Wire Wire Line
	9100 4850 8900 4850
Connection ~ 9100 4800
Connection ~ 9100 4750
$Comp
L +3V3_FPGA #PWR083
U 1 1 59756293
P 3925 4850
F 0 "#PWR083" H 3925 4700 50  0001 C CNN
F 1 "+3V3_FPGA" H 3925 4990 50  0000 C CNN
F 2 "" H 3925 4850 50  0001 C CNN
F 3 "" H 3925 4850 50  0001 C CNN
	1    3925 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 4975 3825 4975
Wire Wire Line
	3925 4850 3925 4975
Wire Wire Line
	3925 4875 3825 4875
Wire Wire Line
	3825 4925 3925 4925
Connection ~ 3925 4925
Connection ~ 3925 4875
NoConn ~ 8900 4550
NoConn ~ 8900 4450
NoConn ~ 8900 4350
Text GLabel 2700 1800 2    60   Output ~ 0
Int_Ref_Clk
Text GLabel 1900 4450 2    60   Output ~ 0
Int_Ref_Clk
Wire Wire Line
	1375 4000 1650 4000
Wire Wire Line
	1650 4000 1650 3900
Wire Wire Line
	1650 3900 1900 3900
Wire Wire Line
	1375 4350 1700 4350
Wire Wire Line
	1375 4050 1700 4050
Wire Wire Line
	1700 4050 1700 3975
Wire Wire Line
	1700 3975 1900 3975
Wire Wire Line
	1375 4100 1750 4100
Wire Wire Line
	1750 4100 1750 4050
Wire Wire Line
	1750 4050 1900 4050
Wire Wire Line
	1375 4150 1800 4150
Wire Wire Line
	1800 4150 1800 4125
Wire Wire Line
	1800 4125 1900 4125
Wire Wire Line
	1375 4200 1900 4200
Wire Wire Line
	1375 4250 1800 4250
Wire Wire Line
	1800 4250 1800 4275
Wire Wire Line
	1800 4275 1900 4275
Wire Wire Line
	1375 4300 1750 4300
Wire Wire Line
	1750 4300 1750 4350
Wire Wire Line
	1750 4350 1900 4350
Wire Wire Line
	1700 4350 1700 4450
Wire Wire Line
	1700 4450 1900 4450
Wire Wire Line
	6250 4350 6375 4350
Wire Wire Line
	6375 4350 6375 4600
Connection ~ 6325 3600
Wire Wire Line
	6325 3950 6250 3950
Wire Wire Line
	8900 4250 9900 4250
Wire Wire Line
	9900 4250 9900 4475
Wire Wire Line
	9900 4475 10275 4475
Wire Wire Line
	8900 4300 9850 4300
Wire Wire Line
	9850 4300 9850 4575
Wire Wire Line
	9850 4575 10275 4575
Text GLabel 10275 4475 2    60   Output ~ 0
TP9
Text GLabel 10275 4575 2    60   Output ~ 0
TP10
Text GLabel 4900 6025 0    60   Output ~ 0
TP9
Text GLabel 5800 6025 2    60   Output ~ 0
TP10
Wire Wire Line
	5800 6025 5550 6025
Wire Wire Line
	5150 6025 4900 6025
NoConn ~ 5150 6225
NoConn ~ 5550 6225
NoConn ~ 5150 6125
NoConn ~ 5550 6125
$Comp
L xc6slx9_144 xc6slx9_1
U 1 1 595EA0E3
P 1100 4275
F 0 "xc6slx9_1" H 1075 5075 50  0000 C CNN
F 1 "xc6slx9_144" H 1025 5150 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 1325 5000 60  0001 C CNN
F 3 "" H 1325 5000 60  0001 C CNN
	1    1100 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 4900 1575 4900
Wire Wire Line
	1575 4875 1575 5000
Wire Wire Line
	1575 4950 1375 4950
Connection ~ 1575 4900
Wire Wire Line
	1575 5000 1375 5000
Connection ~ 1575 4950
NoConn ~ 8900 3450
NoConn ~ 8900 3500
NoConn ~ 8900 3550
Wire Wire Line
	725  6750 725  6725
Wire Wire Line
	1025 6750 1025 6725
Wire Wire Line
	1400 6750 1400 6725
Wire Wire Line
	1750 6750 1750 6725
Wire Wire Line
	2050 6750 2050 6725
NoConn ~ 3825 4625
NoConn ~ 3825 4525
Wire Wire Line
	4650 4350 4525 4350
Wire Wire Line
	4525 4350 4525 4375
Wire Wire Line
	4525 4375 3825 4375
Wire Wire Line
	3825 4425 4525 4425
Wire Wire Line
	4525 4425 4525 4450
Wire Wire Line
	4525 4450 4650 4450
Wire Wire Line
	6375 4600 6850 4600
Wire Wire Line
	6425 4500 6850 4500
Wire Wire Line
	6425 4300 6425 4500
Wire Wire Line
	6250 4300 6425 4300
Wire Wire Line
	6475 4400 6850 4400
Wire Wire Line
	6475 4250 6475 4400
Wire Wire Line
	6250 4250 6475 4250
Wire Wire Line
	6525 4200 6250 4200
Wire Wire Line
	6525 4300 6525 4200
Wire Wire Line
	6850 4300 6525 4300
Wire Wire Line
	6600 4200 6850 4200
Wire Wire Line
	6600 4150 6600 4200
Wire Wire Line
	6250 4150 6600 4150
Wire Wire Line
	6850 4100 6250 4100
Text GLabel 6850 4600 2    60   Output ~ 0
LED7
Text GLabel 6850 4500 2    60   Output ~ 0
LED6
Text GLabel 6850 4400 2    60   Output ~ 0
LED5
Text GLabel 6850 4300 2    60   Output ~ 0
LED4
Text GLabel 6850 4200 2    60   Output ~ 0
LED3
Text GLabel 6850 4100 2    60   Output ~ 0
LED2
Wire Wire Line
	3800 6750 3800 6725
Wire Wire Line
	3500 6750 3500 6725
Wire Wire Line
	3200 6750 3200 6725
Wire Wire Line
	2925 6750 2925 6725
Wire Wire Line
	2625 6750 2625 6725
Wire Wire Line
	2325 6750 2325 6725
$Comp
L +3V3_FPGA #PWR071
U 1 1 5971F5AA
P 3775 7100
F 0 "#PWR071" H 3775 6950 50  0001 C CNN
F 1 "+3V3_FPGA" H 3775 7240 50  0000 C CNN
F 2 "" H 3775 7100 50  0001 C CNN
F 3 "" H 3775 7100 50  0001 C CNN
	1    3775 7100
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 59710E67
P 3800 6275
F 0 "R23" V 3880 6275 50  0000 C CNN
F 1 "680R" V 3800 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3730 6275 50  0001 C CNN
F 3 "" H 3800 6275 50  0001 C CNN
	1    3800 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6100 3800 6125
$Comp
L GND #PWR067
U 1 1 59710E60
P 3800 6750
F 0 "#PWR067" H 3800 6500 50  0001 C CNN
F 1 "GND" H 3800 6600 50  0000 C CNN
F 2 "" H 3800 6750 50  0001 C CNN
F 3 "" H 3800 6750 50  0001 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D10
U 1 1 59710E59
P 3800 6575
F 0 "D10" H 3800 6675 50  0000 C CNN
F 1 "LED" H 3800 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 3800 6575 50  0001 C CNN
F 3 "" H 3800 6575 50  0001 C CNN
	1    3800 6575
	0    -1   -1   0   
$EndComp
$Comp
L R R22
U 1 1 59710E4C
P 3500 6275
F 0 "R22" V 3580 6275 50  0000 C CNN
F 1 "680R" V 3500 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3430 6275 50  0001 C CNN
F 3 "" H 3500 6275 50  0001 C CNN
	1    3500 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6100 3500 6125
$Comp
L GND #PWR066
U 1 1 59710E45
P 3500 6750
F 0 "#PWR066" H 3500 6500 50  0001 C CNN
F 1 "GND" H 3500 6600 50  0000 C CNN
F 2 "" H 3500 6750 50  0001 C CNN
F 3 "" H 3500 6750 50  0001 C CNN
	1    3500 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D9
U 1 1 59710E3E
P 3500 6575
F 0 "D9" H 3500 6675 50  0000 C CNN
F 1 "LED" H 3500 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 3500 6575 50  0001 C CNN
F 3 "" H 3500 6575 50  0001 C CNN
	1    3500 6575
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 59710CD0
P 3200 6275
F 0 "R21" V 3280 6275 50  0000 C CNN
F 1 "680R" V 3200 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3130 6275 50  0001 C CNN
F 3 "" H 3200 6275 50  0001 C CNN
	1    3200 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6100 3200 6125
$Comp
L GND #PWR065
U 1 1 59710CC9
P 3200 6750
F 0 "#PWR065" H 3200 6500 50  0001 C CNN
F 1 "GND" H 3200 6600 50  0000 C CNN
F 2 "" H 3200 6750 50  0001 C CNN
F 3 "" H 3200 6750 50  0001 C CNN
	1    3200 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D8
U 1 1 59710CC2
P 3200 6575
F 0 "D8" H 3200 6675 50  0000 C CNN
F 1 "LED" H 3200 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 3200 6575 50  0001 C CNN
F 3 "" H 3200 6575 50  0001 C CNN
	1    3200 6575
	0    -1   -1   0   
$EndComp
$Comp
L R R20
U 1 1 59710CB5
P 2925 6275
F 0 "R20" V 3005 6275 50  0000 C CNN
F 1 "680R" V 2925 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2855 6275 50  0001 C CNN
F 3 "" H 2925 6275 50  0001 C CNN
	1    2925 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 6100 2925 6125
$Comp
L GND #PWR064
U 1 1 59710CAE
P 2925 6750
F 0 "#PWR064" H 2925 6500 50  0001 C CNN
F 1 "GND" H 2925 6600 50  0000 C CNN
F 2 "" H 2925 6750 50  0001 C CNN
F 3 "" H 2925 6750 50  0001 C CNN
	1    2925 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 59710CA7
P 2925 6575
F 0 "D7" H 2925 6675 50  0000 C CNN
F 1 "LED" H 2925 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 2925 6575 50  0001 C CNN
F 3 "" H 2925 6575 50  0001 C CNN
	1    2925 6575
	0    -1   -1   0   
$EndComp
$Comp
L R R19
U 1 1 59710C9A
P 2625 6275
F 0 "R19" V 2705 6275 50  0000 C CNN
F 1 "680R" V 2625 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2555 6275 50  0001 C CNN
F 3 "" H 2625 6275 50  0001 C CNN
	1    2625 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 6100 2625 6125
$Comp
L GND #PWR063
U 1 1 59710C93
P 2625 6750
F 0 "#PWR063" H 2625 6500 50  0001 C CNN
F 1 "GND" H 2625 6600 50  0000 C CNN
F 2 "" H 2625 6750 50  0001 C CNN
F 3 "" H 2625 6750 50  0001 C CNN
	1    2625 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D6
U 1 1 59710C8C
P 2625 6575
F 0 "D6" H 2625 6675 50  0000 C CNN
F 1 "LED" H 2625 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 2625 6575 50  0001 C CNN
F 3 "" H 2625 6575 50  0001 C CNN
	1    2625 6575
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 59710855
P 2325 6275
F 0 "R18" V 2405 6275 50  0000 C CNN
F 1 "680R" V 2325 6275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2255 6275 50  0001 C CNN
F 3 "" H 2325 6275 50  0001 C CNN
	1    2325 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2325 6100 2325 6125
$Comp
L GND #PWR062
U 1 1 5971084E
P 2325 6750
F 0 "#PWR062" H 2325 6500 50  0001 C CNN
F 1 "GND" H 2325 6600 50  0000 C CNN
F 2 "" H 2325 6750 50  0001 C CNN
F 3 "" H 2325 6750 50  0001 C CNN
	1    2325 6750
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 59710847
P 2325 6575
F 0 "D5" H 2325 6675 50  0000 C CNN
F 1 "LED" H 2325 6475 50  0000 C CNN
F 2 "Footprints_LJ:Mini_TopLed_SMD" H 2325 6575 50  0001 C CNN
F 3 "" H 2325 6575 50  0001 C CNN
	1    2325 6575
	0    -1   -1   0   
$EndComp
Text GLabel 3800 6100 1    60   Input ~ 0
LED7
Text GLabel 3500 6100 1    60   Input ~ 0
LED6
Text GLabel 3200 6100 1    60   Input ~ 0
LED5
Text GLabel 2925 6100 1    60   Input ~ 0
LED4
Text GLabel 2625 6100 1    60   Input ~ 0
LED3
Text GLabel 2325 6100 1    60   Input ~ 0
LED2
$EndSCHEMATC
