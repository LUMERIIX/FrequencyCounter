EESchema Schematic File Version 2
LIBS:FrequnecyCounter-rescue
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
Sheet 5 5
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
P 6025 4075
F 0 "xc6slx9_1" H 6000 4875 50  0000 C CNN
F 1 "xc6slx9_144" H 5950 4950 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 6250 4800 60  0001 C CNN
F 3 "" H 6250 4800 60  0001 C CNN
	3    6025 4075
	1    0    0    -1  
$EndComp
$Comp
L xc6slx9_144 xc6slx9_1
U 5 1 595EA1F7
P 6125 5775
F 0 "xc6slx9_1" H 6100 6025 50  0000 C CNN
F 1 "xc6slx9_144" H 6100 6100 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 6350 6500 60  0001 C CNN
F 3 "" H 6350 6500 60  0001 C CNN
	5    6125 5775
	1    0    0    -1  
$EndComp
$Comp
L xc6slx9_144 xc6slx9_1
U 6 1 595EA238
P 10600 2275
F 0 "xc6slx9_1" H 10600 2725 50  0000 C CNN
F 1 "xc6slx9_144" H 10575 2800 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 10825 3000 60  0001 C CNN
F 3 "" H 10825 3000 60  0001 C CNN
	6    10600 2275
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR075
U 1 1 595E03AA
P 1100 975
F 0 "#PWR075" H 1100 825 50  0001 C CNN
F 1 "+3.3V" H 1100 1115 50  0000 C CNN
F 2 "" H 1100 975 50  0001 C CNN
F 3 "" H 1100 975 50  0001 C CNN
	1    1100 975 
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 595E03CE
P 1100 1975
F 0 "C23" H 1125 2075 50  0000 L CNN
F 1 "100n" H 1125 1875 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 1138 1825 50  0001 C CNN
F 3 "" H 1100 1975 50  0001 C CNN
	1    1100 1975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 595E07BC
P 1100 2125
F 0 "#PWR076" H 1100 1875 50  0001 C CNN
F 1 "GND" H 1100 1975 50  0000 C CNN
F 2 "" H 1100 2125 50  0001 C CNN
F 3 "" H 1100 2125 50  0001 C CNN
	1    1100 2125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 595E0A75
P 2425 1175
F 0 "#PWR077" H 2425 925 50  0001 C CNN
F 1 "GND" H 2425 1025 50  0000 C CNN
F 2 "" H 2425 1175 50  0001 C CNN
F 3 "" H 2425 1175 50  0001 C CNN
	1    2425 1175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR078
U 1 1 595F4E0F
P 10675 2575
F 0 "#PWR078" H 10675 2325 50  0001 C CNN
F 1 "GND" H 10675 2425 50  0000 C CNN
F 2 "" H 10675 2575 50  0001 C CNN
F 3 "" H 10675 2575 50  0001 C CNN
	1    10675 2575
	1    0    0    -1  
$EndComp
$Comp
L MCP4725 U3
U 1 1 595F72D2
P 7475 2075
F 0 "U3" H 7225 3100 60  0000 C CNN
F 1 "MCP4725" H 7375 3025 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 7475 2075 60  0001 C CNN
F 3 "" H 7475 2075 60  0001 C CNN
	1    7475 2075
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 595F752D
P 6125 1200
F 0 "C19" H 6150 1300 50  0000 L CNN
F 1 "100n" H 6150 1100 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 6163 1050 50  0001 C CNN
F 3 "" H 6125 1200 50  0001 C CNN
	1    6125 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR079
U 1 1 595F7611
P 6125 1350
F 0 "#PWR079" H 6125 1100 50  0001 C CNN
F 1 "GND" H 6125 1200 50  0000 C CNN
F 2 "" H 6125 1350 50  0001 C CNN
F 3 "" H 6125 1350 50  0001 C CNN
	1    6125 1350
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR080
U 1 1 595F9456
P 9500 1575
F 0 "#PWR080" H 9500 1715 20  0001 C CNN
F 1 "+1.2V" H 9500 1685 30  0000 C CNN
F 2 "" H 9500 1575 60  0000 C CNN
F 3 "" H 9500 1575 60  0000 C CNN
	1    9500 1575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR081
U 1 1 595F94C4
P 9100 2000
F 0 "#PWR081" H 9100 1750 50  0001 C CNN
F 1 "GND" H 9100 1850 50  0000 C CNN
F 2 "" H 9100 2000 50  0001 C CNN
F 3 "" H 9100 2000 50  0001 C CNN
	1    9100 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR082
U 1 1 595F9503
P 9300 2000
F 0 "#PWR082" H 9300 1750 50  0001 C CNN
F 1 "GND" H 9300 1850 50  0000 C CNN
F 2 "" H 9300 2000 50  0001 C CNN
F 3 "" H 9300 2000 50  0001 C CNN
	1    9300 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR083
U 1 1 595F954A
P 9500 2000
F 0 "#PWR083" H 9500 1750 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9138 975 50  0001 C CNN
F 3 "" H 9100 1125 50  0001 C CNN
	1    9100 1125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR084
U 1 1 595FA136
P 9100 1300
F 0 "#PWR084" H 9100 1050 50  0001 C CNN
F 1 "GND" H 9100 1150 50  0000 C CNN
F 2 "" H 9100 1300 50  0001 C CNN
F 3 "" H 9100 1300 50  0001 C CNN
	1    9100 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR085
U 1 1 595FA510
P 9300 1300
F 0 "#PWR085" H 9300 1050 50  0001 C CNN
F 1 "GND" H 9300 1150 50  0000 C CNN
F 2 "" H 9300 1300 50  0001 C CNN
F 3 "" H 9300 1300 50  0001 C CNN
	1    9300 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR086
U 1 1 595FA5A3
P 9500 1300
F 0 "#PWR086" H 9500 1050 50  0001 C CNN
F 1 "GND" H 9500 1150 50  0000 C CNN
F 2 "" H 9500 1300 50  0001 C CNN
F 3 "" H 9500 1300 50  0001 C CNN
	1    9500 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR087
U 1 1 595FA5ED
P 9700 1300
F 0 "#PWR087" H 9700 1050 50  0001 C CNN
F 1 "GND" H 9700 1150 50  0000 C CNN
F 2 "" H 9700 1300 50  0001 C CNN
F 3 "" H 9700 1300 50  0001 C CNN
	1    9700 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR088
U 1 1 595FA637
P 9900 1300
F 0 "#PWR088" H 9900 1050 50  0001 C CNN
F 1 "GND" H 9900 1150 50  0000 C CNN
F 2 "" H 9900 1300 50  0001 C CNN
F 3 "" H 9900 1300 50  0001 C CNN
	1    9900 1300
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 595FD1B4
P 9700 5400
F 0 "C24" H 9725 5500 50  0000 L CNN
F 1 "4.7u" H 9725 5300 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9738 5250 50  0001 C CNN
F 3 "" H 9700 5400 50  0001 C CNN
	1    9700 5400
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 595FD1BA
P 9900 5400
F 0 "C25" H 9925 5500 50  0000 L CNN
F 1 "0.47u" H 9925 5300 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9938 5250 50  0001 C CNN
F 3 "" H 9900 5400 50  0001 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR089
U 1 1 595FD1C9
P 9700 5550
F 0 "#PWR089" H 9700 5300 50  0001 C CNN
F 1 "GND" H 9700 5400 50  0000 C CNN
F 2 "" H 9700 5550 50  0001 C CNN
F 3 "" H 9700 5550 50  0001 C CNN
	1    9700 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR090
U 1 1 595FD1CF
P 9900 5550
F 0 "#PWR090" H 9900 5300 50  0001 C CNN
F 1 "GND" H 9900 5400 50  0000 C CNN
F 2 "" H 9900 5550 50  0001 C CNN
F 3 "" H 9900 5550 50  0001 C CNN
	1    9900 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR091
U 1 1 595FD1D5
P 10100 5550
F 0 "#PWR091" H 10100 5300 50  0001 C CNN
F 1 "GND" H 10100 5400 50  0000 C CNN
F 2 "" H 10100 5550 50  0001 C CNN
F 3 "" H 10100 5550 50  0001 C CNN
	1    10100 5550
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 595FD8AA
P 9700 6125
F 0 "C27" H 9725 6225 50  0000 L CNN
F 1 "4.7u" H 9725 6025 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9738 5975 50  0001 C CNN
F 3 "" H 9700 6125 50  0001 C CNN
	1    9700 6125
	1    0    0    -1  
$EndComp
$Comp
L C C28
U 1 1 595FD8B0
P 9900 6125
F 0 "C28" H 9925 6225 50  0000 L CNN
F 1 "0.47u" H 9925 6025 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9938 5975 50  0001 C CNN
F 3 "" H 9900 6125 50  0001 C CNN
	1    9900 6125
	1    0    0    -1  
$EndComp
$Comp
L C C29
U 1 1 595FD8B6
P 10100 6125
F 0 "C29" H 10125 6225 50  0000 L CNN
F 1 "0.47u" H 10125 6025 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10138 5975 50  0001 C CNN
F 3 "" H 10100 6125 50  0001 C CNN
	1    10100 6125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR092
U 1 1 595FD8BC
P 9700 6275
F 0 "#PWR092" H 9700 6025 50  0001 C CNN
F 1 "GND" H 9700 6125 50  0000 C CNN
F 2 "" H 9700 6275 50  0001 C CNN
F 3 "" H 9700 6275 50  0001 C CNN
	1    9700 6275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 595FD8C2
P 9900 6275
F 0 "#PWR093" H 9900 6025 50  0001 C CNN
F 1 "GND" H 9900 6125 50  0000 C CNN
F 2 "" H 9900 6275 50  0001 C CNN
F 3 "" H 9900 6275 50  0001 C CNN
	1    9900 6275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR094
U 1 1 595FD8C8
P 10100 6275
F 0 "#PWR094" H 10100 6025 50  0001 C CNN
F 1 "GND" H 10100 6125 50  0000 C CNN
F 2 "" H 10100 6275 50  0001 C CNN
F 3 "" H 10100 6275 50  0001 C CNN
	1    10100 6275
	1    0    0    -1  
$EndComp
Text HLabel 9425 3700 2    60   Output ~ 0
EN_EXTREF_FILTA
Text HLabel 9425 3850 2    60   Output ~ 0
EN_EXTREF_FILTB
Text HLabel 6525 5700 2    60   Input ~ 0
TCK
Text HLabel 6775 5750 2    60   Input ~ 0
TDI
Text HLabel 7275 5850 2    60   Output ~ 0
TDO
Text HLabel 7000 5800 2    60   Input ~ 0
TMS
Text HLabel 1900 3875 2    60   Input ~ 0
Clk_A
Text HLabel 9725 4175 2    60   Input ~ 0
Clk_B
Text HLabel 9425 3550 2    60   Input ~ 0
Ext_Ref_Clk
NoConn ~ 6250 3325
NoConn ~ 6250 3525
NoConn ~ 6250 4675
NoConn ~ 3825 3700
NoConn ~ 3825 3900
NoConn ~ 3825 4100
NoConn ~ 3825 3800
NoConn ~ 3825 4700
$Comp
L C C30
U 1 1 596334CA
P 10525 5400
F 0 "C30" H 10550 5500 50  0000 L CNN
F 1 "4.7u" H 10550 5300 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10563 5250 50  0001 C CNN
F 3 "" H 10525 5400 50  0001 C CNN
	1    10525 5400
	1    0    0    -1  
$EndComp
$Comp
L C C31
U 1 1 596334D1
P 10725 5400
F 0 "C31" H 10750 5500 50  0000 L CNN
F 1 "0.47u" H 10750 5300 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10763 5250 50  0001 C CNN
F 3 "" H 10725 5400 50  0001 C CNN
	1    10725 5400
	1    0    0    -1  
$EndComp
$Comp
L C C32
U 1 1 596334D8
P 10925 5400
F 0 "C32" H 10950 5500 50  0000 L CNN
F 1 "0.47u" H 10950 5300 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10963 5250 50  0001 C CNN
F 3 "" H 10925 5400 50  0001 C CNN
	1    10925 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR095
U 1 1 596334DF
P 10525 5550
F 0 "#PWR095" H 10525 5300 50  0001 C CNN
F 1 "GND" H 10525 5400 50  0000 C CNN
F 2 "" H 10525 5550 50  0001 C CNN
F 3 "" H 10525 5550 50  0001 C CNN
	1    10525 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR096
U 1 1 596334E5
P 10725 5550
F 0 "#PWR096" H 10725 5300 50  0001 C CNN
F 1 "GND" H 10725 5400 50  0000 C CNN
F 2 "" H 10725 5550 50  0001 C CNN
F 3 "" H 10725 5550 50  0001 C CNN
	1    10725 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR097
U 1 1 596334EB
P 10925 5550
F 0 "#PWR097" H 10925 5300 50  0001 C CNN
F 1 "GND" H 10925 5400 50  0000 C CNN
F 2 "" H 10925 5550 50  0001 C CNN
F 3 "" H 10925 5550 50  0001 C CNN
	1    10925 5550
	1    0    0    -1  
$EndComp
$Comp
L C C33
U 1 1 596339A0
P 10525 6125
F 0 "C33" H 10550 6225 50  0000 L CNN
F 1 "4.7u" H 10550 6025 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10563 5975 50  0001 C CNN
F 3 "" H 10525 6125 50  0001 C CNN
	1    10525 6125
	1    0    0    -1  
$EndComp
$Comp
L C C34
U 1 1 596339A7
P 10725 6125
F 0 "C34" H 10750 6225 50  0000 L CNN
F 1 "0.47u" H 10750 6025 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10763 5975 50  0001 C CNN
F 3 "" H 10725 6125 50  0001 C CNN
	1    10725 6125
	1    0    0    -1  
$EndComp
$Comp
L C C35
U 1 1 596339AE
P 10925 6125
F 0 "C35" H 10950 6225 50  0000 L CNN
F 1 "0.47u" H 10950 6025 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10963 5975 50  0001 C CNN
F 3 "" H 10925 6125 50  0001 C CNN
	1    10925 6125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR098
U 1 1 596339B5
P 10525 6275
F 0 "#PWR098" H 10525 6025 50  0001 C CNN
F 1 "GND" H 10525 6125 50  0000 C CNN
F 2 "" H 10525 6275 50  0001 C CNN
F 3 "" H 10525 6275 50  0001 C CNN
	1    10525 6275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR099
U 1 1 596339BB
P 10725 6275
F 0 "#PWR099" H 10725 6025 50  0001 C CNN
F 1 "GND" H 10725 6125 50  0000 C CNN
F 2 "" H 10725 6275 50  0001 C CNN
F 3 "" H 10725 6275 50  0001 C CNN
	1    10725 6275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0100
U 1 1 596339C1
P 10925 6275
F 0 "#PWR0100" H 10925 6025 50  0001 C CNN
F 1 "GND" H 10925 6125 50  0000 C CNN
F 2 "" H 10925 6275 50  0001 C CNN
F 3 "" H 10925 6275 50  0001 C CNN
	1    10925 6275
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 59637708
P 9300 1125
F 0 "C12" H 9325 1225 50  0000 L CNN
F 1 "4.7u" H 9325 1025 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9338 975 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9538 975 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9738 975 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9938 975 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10138 975 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10338 975 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10538 975 50  0001 C CNN
F 3 "" H 10500 1125 50  0001 C CNN
	1    10500 1125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0101
U 1 1 59637DA6
P 10100 1300
F 0 "#PWR0101" H 10100 1050 50  0001 C CNN
F 1 "GND" H 10100 1150 50  0000 C CNN
F 2 "" H 10100 1300 50  0001 C CNN
F 3 "" H 10100 1300 50  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0102
U 1 1 59637E23
P 10300 1300
F 0 "#PWR0102" H 10300 1050 50  0001 C CNN
F 1 "GND" H 10300 1150 50  0000 C CNN
F 2 "" H 10300 1300 50  0001 C CNN
F 3 "" H 10300 1300 50  0001 C CNN
	1    10300 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0103
U 1 1 59637EA0
P 10500 1300
F 0 "#PWR0103" H 10500 1050 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9138 1675 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9338 1675 50  0001 C CNN
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
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 9538 1675 50  0001 C CNN
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
L GND #PWR0104
U 1 1 5963EF40
P 1400 6750
F 0 "#PWR0104" H 1400 6500 50  0001 C CNN
F 1 "GND" H 1400 6600 50  0000 C CNN
F 2 "" H 1400 6750 50  0001 C CNN
F 3 "" H 1400 6750 50  0001 C CNN
	1    1400 6750
	1    0    0    -1  
$EndComp
Text GLabel 1400 6100 1    60   Input ~ 0
WORK_LED
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
NoConn ~ 3825 4600
NoConn ~ 3825 3600
$Comp
L GND #PWR0105
U 1 1 5967BC1C
P 7075 1700
F 0 "#PWR0105" H 7075 1450 50  0001 C CNN
F 1 "GND" H 7075 1550 50  0000 C CNN
F 2 "" H 7075 1700 50  0001 C CNN
F 3 "" H 7075 1700 50  0001 C CNN
	1    7075 1700
	1    0    0    -1  
$EndComp
Text GLabel 6850 3575 2    60   Output ~ 0
WORK_LED
Text GLabel 6900 3250 2    60   Output ~ 0
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
L GND #PWR0106
U 1 1 59682480
P 1025 6750
F 0 "#PWR0106" H 1025 6500 50  0001 C CNN
F 1 "GND" H 1025 6600 50  0000 C CNN
F 2 "" H 1025 6750 50  0001 C CNN
F 3 "" H 1025 6750 50  0001 C CNN
	1    1025 6750
	1    0    0    -1  
$EndComp
Text GLabel 1025 6100 1    60   Input ~ 0
DONE_LED
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
$Comp
L GND #PWR0107
U 1 1 5969B431
P 6325 5900
F 0 "#PWR0107" H 6325 5650 50  0001 C CNN
F 1 "GND" H 6325 5750 50  0000 C CNN
F 2 "" H 6325 5900 50  0001 C CNN
F 3 "" H 6325 5900 50  0001 C CNN
	1    6325 5900
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 596C0ACD
P 6825 3025
F 0 "R11" V 6905 3025 50  0000 C CNN
F 1 "4.7k" V 6825 3025 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6755 3025 50  0001 C CNN
F 3 "" H 6825 3025 50  0001 C CNN
	1    6825 3025
	1    0    0    -1  
$EndComp
Text HLabel 4650 4225 2    60   Input ~ 0
RXD
Text HLabel 4650 4125 2    60   Output ~ 0
TXD
$Comp
L xc6slx9_144 xc6slx9_1
U 2 1 595EA156
P 3425 4125
F 0 "xc6slx9_1" H 3400 4925 50  0000 C CNN
F 1 "xc6slx9_144" H 3350 5000 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 3650 4850 60  0001 C CNN
F 3 "" H 3650 4850 60  0001 C CNN
	2    3425 4125
	1    0    0    -1  
$EndComp
$Comp
L AOCJY1-100MHz G1
U 1 1 59716B61
P 1925 1475
F 0 "G1" H 1525 2225 60  0000 C CNN
F 1 "AOCJY1-100MHz" H 1875 2125 60  0000 C CNN
F 2 "Footprints_LJ:Crystal_smd_4pin_20.8x13.2" H 1925 1475 60  0001 C CNN
F 3 "" H 1925 1475 60  0001 C CNN
	1    1925 1475
	1    0    0    -1  
$EndComp
NoConn ~ 3825 3950
Text GLabel 5525 1475 0    60   Input ~ 0
SCL_DAC
Text GLabel 5525 1575 0    60   Input ~ 0
SDA_DAC
Text GLabel 9725 3975 2    60   Output ~ 0
SDA_DAC
Text GLabel 9725 4075 2    60   Output ~ 0
SCL_DAC
NoConn ~ 3825 3850
NoConn ~ 3825 3750
NoConn ~ 3825 3650
NoConn ~ 3825 3550
NoConn ~ 3825 4350
NoConn ~ 3825 4550
NoConn ~ 3825 4650
NoConn ~ 3825 4450
$Comp
L R R8
U 1 1 596C9503
P 5625 1150
F 0 "R8" V 5705 1150 50  0000 C CNN
F 1 "4.7k" V 5625 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5555 1150 50  0001 C CNN
F 3 "" H 5625 1150 50  0001 C CNN
	1    5625 1150
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 596C95DC
P 5825 1150
F 0 "R9" V 5905 1150 50  0000 C CNN
F 1 "4.7k" V 5825 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5755 1150 50  0001 C CNN
F 3 "" H 5825 1150 50  0001 C CNN
	1    5825 1150
	1    0    0    -1  
$EndComp
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
$Comp
L Stiftleiste_2x10Pm_R2.54 X1
U 1 1 597078D8
P 4300 6550
F 0 "X1" H 4350 7100 60  0000 C CNN
F 1 "Stiftleiste_2x10Pm_R2.54" H 4300 5950 60  0000 C CNN
F 2 "Footprints_LJ:Stiftleiste_2x10Pm_R2.54" H 4300 6550 60  0001 C CNN
F 3 "" H 4300 6550 60  0001 C CNN
	1    4300 6550
	1    0    0    -1  
$EndComp
$Comp
L C C26
U 1 1 595FD1C0
P 10100 5400
F 0 "C26" H 10125 5500 50  0000 L CNN
F 1 "0.47u" H 10125 5300 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 10138 5250 50  0001 C CNN
F 3 "" H 10100 5400 50  0001 C CNN
	1    10100 5400
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0108
U 1 1 5971EC0E
P 9100 4600
F 0 "#PWR0108" H 9100 4450 50  0001 C CNN
F 1 "+3V3_FPGA" H 9100 4740 50  0000 C CNN
F 2 "" H 9100 4600 50  0001 C CNN
F 3 "" H 9100 4600 50  0001 C CNN
	1    9100 4600
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0109
U 1 1 5971EC9A
P 1575 4750
F 0 "#PWR0109" H 1575 4600 50  0001 C CNN
F 1 "+3V3_FPGA" H 1575 4890 50  0000 C CNN
F 2 "" H 1575 4750 50  0001 C CNN
F 3 "" H 1575 4750 50  0001 C CNN
	1    1575 4750
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0110
U 1 1 5971F636
P 10100 5950
F 0 "#PWR0110" H 10100 5800 50  0001 C CNN
F 1 "+3V3_FPGA" H 10100 6090 50  0000 C CNN
F 2 "" H 10100 5950 50  0001 C CNN
F 3 "" H 10100 5950 50  0001 C CNN
	1    10100 5950
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0111
U 1 1 5971F6C2
P 10925 5225
F 0 "#PWR0111" H 10925 5075 50  0001 C CNN
F 1 "+3V3_FPGA" H 10925 5365 50  0000 C CNN
F 2 "" H 10925 5225 50  0001 C CNN
F 3 "" H 10925 5225 50  0001 C CNN
	1    10925 5225
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0112
U 1 1 5971F74E
P 10925 5950
F 0 "#PWR0112" H 10925 5800 50  0001 C CNN
F 1 "+3V3_FPGA" H 10925 6090 50  0000 C CNN
F 2 "" H 10925 5950 50  0001 C CNN
F 3 "" H 10925 5950 50  0001 C CNN
	1    10925 5950
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0113
U 1 1 5971FA82
P 6825 2875
F 0 "#PWR0113" H 6825 2725 50  0001 C CNN
F 1 "+3V3_FPGA" H 6825 3015 50  0000 C CNN
F 2 "" H 6825 2875 50  0001 C CNN
F 3 "" H 6825 2875 50  0001 C CNN
	1    6825 2875
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0114
U 1 1 5972013B
P 10500 900
F 0 "#PWR0114" H 10500 750 50  0001 C CNN
F 1 "+3V3_FPGA" H 10500 1040 50  0000 C CNN
F 2 "" H 10500 900 50  0001 C CNN
F 3 "" H 10500 900 50  0001 C CNN
	1    10500 900 
	1    0    0    -1  
$EndComp
Text GLabel 4200 6600 0    60   Input ~ 0
SCL_DAC
Text GLabel 4600 6600 2    60   Input ~ 0
SDA_DAC
Text GLabel 2750 4025 2    60   Output ~ 0
TP1
Text GLabel 2750 3925 2    60   Output ~ 0
TP2
Text GLabel 2750 3825 2    60   Output ~ 0
TP3
Text GLabel 2750 3725 2    60   Output ~ 0
TP4
Text GLabel 2750 3625 2    60   Output ~ 0
TP5
Text GLabel 10800 4575 2    60   Output ~ 0
TP6
Text GLabel 10800 4475 2    60   Output ~ 0
TP7
Text GLabel 10800 4375 2    60   Output ~ 0
TP8
Text GLabel 3950 6100 0    60   Output ~ 0
TP1
Text GLabel 4850 6100 2    60   Output ~ 0
TP2
Text GLabel 3950 6200 0    60   Output ~ 0
TP3
Text GLabel 4850 6200 2    60   Output ~ 0
TP4
Text GLabel 3950 6300 0    60   Output ~ 0
TP5
Text GLabel 4850 6300 2    60   Output ~ 0
TP6
Text GLabel 3950 6400 0    60   Output ~ 0
TP7
Text GLabel 4850 6400 2    60   Output ~ 0
TP8
NoConn ~ 1375 4525
NoConn ~ 1375 4575
NoConn ~ 1375 4625
NoConn ~ 1375 4675
$Comp
L +3V3_FPGA #PWR0115
U 1 1 5973FE95
P 6350 2875
F 0 "#PWR0115" H 6350 2725 50  0001 C CNN
F 1 "+3V3_FPGA" H 6350 3015 50  0000 C CNN
F 2 "" H 6350 2875 50  0001 C CNN
F 3 "" H 6350 2875 50  0001 C CNN
	1    6350 2875
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
L GND #PWR0116
U 1 1 5974536A
P 725 6750
F 0 "#PWR0116" H 725 6500 50  0001 C CNN
F 1 "GND" H 725 6600 50  0000 C CNN
F 2 "" H 725 6750 50  0001 C CNN
F 3 "" H 725 6750 50  0001 C CNN
	1    725  6750
	1    0    0    -1  
$EndComp
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
L +3V3 #PWR0117
U 1 1 597454BF
P 725 6100
F 0 "#PWR0117" H 725 5950 50  0001 C CNN
F 1 "+3V3" H 725 6240 50  0000 C CNN
F 2 "" H 725 6100 50  0001 C CNN
F 3 "" H 725 6100 50  0001 C CNN
	1    725  6100
	1    0    0    -1  
$EndComp
NoConn ~ 1375 4725
NoConn ~ 4600 6900
NoConn ~ 4600 7000
NoConn ~ 4200 7000
NoConn ~ 4200 6900
$Comp
L +3V3_FPGA #PWR0118
U 1 1 59756293
P 3925 4725
F 0 "#PWR0118" H 3925 4575 50  0001 C CNN
F 1 "+3V3_FPGA" H 3925 4865 50  0000 C CNN
F 2 "" H 3925 4725 50  0001 C CNN
F 3 "" H 3925 4725 50  0001 C CNN
	1    3925 4725
	1    0    0    -1  
$EndComp
Text GLabel 2575 975  2    60   Output ~ 0
Int_Ref_Clk
Text GLabel 6850 4025 2    60   Output ~ 0
Int_Ref_Clk
Text GLabel 10800 4275 2    60   Output ~ 0
TP9
Text GLabel 10800 4175 2    60   Output ~ 0
TP10
Text GLabel 3950 6500 0    60   Output ~ 0
TP9
Text GLabel 4850 6500 2    60   Output ~ 0
TP10
NoConn ~ 4200 6800
NoConn ~ 4600 6800
NoConn ~ 4200 6700
NoConn ~ 4600 6700
$Comp
L xc6slx9_144 xc6slx9_1
U 1 1 595EA0E3
P 1100 4150
F 0 "xc6slx9_1" H 1075 4950 50  0000 C CNN
F 1 "xc6slx9_144" H 1025 5025 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 1325 4875 60  0001 C CNN
F 3 "" H 1325 4875 60  0001 C CNN
	1    1100 4150
	1    0    0    -1  
$EndComp
NoConn ~ 3825 4500
NoConn ~ 3825 4400
$Comp
L R R16
U 1 1 59BAADBE
P 5200 2225
F 0 "R16" V 5280 2225 50  0000 C CNN
F 1 "1k" V 5200 2225 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5130 2225 50  0001 C CNN
F 3 "" H 5200 2225 50  0001 C CNN
	1    5200 2225
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 59BAAF37
P 4850 2375
F 0 "C8" H 4875 2475 50  0000 L CNN
F 1 "1u" H 4875 2275 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 4888 2225 50  0001 C CNN
F 3 "" H 4850 2375 50  0001 C CNN
	1    4850 2375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0119
U 1 1 59BAB3E9
P 4850 2525
F 0 "#PWR0119" H 4850 2275 50  0001 C CNN
F 1 "GND" H 4850 2375 50  0000 C CNN
F 2 "" H 4850 2525 50  0001 C CNN
F 3 "" H 4850 2525 50  0001 C CNN
	1    4850 2525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0120
U 1 1 59BAF83E
P 6300 4900
F 0 "#PWR0120" H 6300 4650 50  0001 C CNN
F 1 "GND" H 6300 4750 50  0000 C CNN
F 2 "" H 6300 4900 50  0001 C CNN
F 3 "" H 6300 4900 50  0001 C CNN
	1    6300 4900
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0121
U 1 1 59BC3F1E
P 9700 5250
F 0 "#PWR0121" H 9700 5100 50  0001 C CNN
F 1 "+3V3_FPGA" H 9700 5390 50  0000 C CNN
F 2 "" H 9700 5250 50  0001 C CNN
F 3 "" H 9700 5250 50  0001 C CNN
	1    9700 5250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0122
U 1 1 59C164D1
P 5725 825
F 0 "#PWR0122" H 5725 675 50  0001 C CNN
F 1 "+3.3V" H 5725 965 50  0000 C CNN
F 2 "" H 5725 825 50  0001 C CNN
F 3 "" H 5725 825 50  0001 C CNN
	1    5725 825 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0123
U 1 1 59C16555
P 6125 1025
F 0 "#PWR0123" H 6125 875 50  0001 C CNN
F 1 "+3.3V" H 6125 1165 50  0000 C CNN
F 2 "" H 6125 1025 50  0001 C CNN
F 3 "" H 6125 1025 50  0001 C CNN
	1    6125 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	10675 1975 10675 2575
Connection ~ 10675 2525
Connection ~ 10675 2475
Connection ~ 10675 2425
Connection ~ 10675 2375
Connection ~ 10675 2325
Connection ~ 10675 2275
Connection ~ 10675 2225
Connection ~ 10675 2175
Connection ~ 10675 2125
Connection ~ 10675 2075
Connection ~ 10675 2025
Wire Wire Line
	6250 4775 6250 4825
Wire Wire Line
	6700 1050 6700 1250
Wire Wire Line
	6125 1350 7075 1350
Wire Wire Line
	6700 1250 7075 1250
Wire Wire Line
	8200 1475 8200 2225
Connection ~ 9100 1625
Connection ~ 9300 1625
Connection ~ 9500 1625
Connection ~ 10100 5250
Connection ~ 9900 5250
Connection ~ 9700 5250
Connection ~ 10100 5975
Connection ~ 9900 5975
Connection ~ 9700 5975
Connection ~ 10925 5975
Connection ~ 10725 5975
Connection ~ 10525 5975
Wire Wire Line
	6325 5700 6525 5700
Wire Wire Line
	6325 5750 6775 5750
Wire Wire Line
	6325 5800 7000 5800
Wire Wire Line
	6325 5850 7275 5850
Connection ~ 10925 5250
Connection ~ 10725 5250
Connection ~ 10525 5250
Wire Wire Line
	1400 6100 1400 6125
Wire Wire Line
	6250 3575 6850 3575
Wire Wire Line
	1025 6100 1025 6125
Wire Wire Line
	6125 1050 6125 1025
Wire Wire Line
	6125 1050 6700 1050
Wire Wire Line
	2425 975  2575 975 
Wire Wire Line
	5525 1575 7075 1575
Wire Wire Line
	5525 1475 7075 1475
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
	6250 3375 6825 3375
Wire Wire Line
	6900 3250 6825 3250
Connection ~ 6825 3250
Wire Wire Line
	5625 1000 5625 925 
Wire Wire Line
	5625 925  5825 925 
Wire Wire Line
	5725 825  5725 925 
Connection ~ 5725 925 
Wire Wire Line
	5625 1300 5625 1475
Connection ~ 5625 1475
Wire Wire Line
	5825 1300 5825 1575
Connection ~ 5825 1575
Connection ~ 8950 1425
Wire Wire Line
	10925 5975 10925 5950
Wire Wire Line
	10525 5975 10925 5975
Wire Wire Line
	10925 5250 10925 5225
Wire Wire Line
	10525 5250 10925 5250
Wire Wire Line
	9700 5975 10100 5975
Wire Wire Line
	10100 5975 10100 5950
Wire Wire Line
	9700 5250 10100 5250
Wire Wire Line
	1375 3825 2450 3825
Wire Wire Line
	1375 3775 2500 3775
Wire Wire Line
	1375 3725 2550 3725
Wire Wire Line
	1375 3675 2600 3675
Wire Wire Line
	1375 3625 2750 3625
Wire Wire Line
	4200 6100 3950 6100
Wire Wire Line
	4200 6300 3950 6300
Wire Wire Line
	3950 6400 4200 6400
Wire Wire Line
	4600 6400 4850 6400
Wire Wire Line
	4850 6300 4600 6300
Wire Wire Line
	4600 6200 4850 6200
Wire Wire Line
	4850 6100 4600 6100
Wire Wire Line
	4200 6200 3950 6200
Wire Wire Line
	725  6100 725  6125
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
Wire Wire Line
	8900 4625 9100 4625
Wire Wire Line
	9100 4675 8900 4675
Wire Wire Line
	9100 4600 9100 4725
Wire Wire Line
	9100 4725 8900 4725
Connection ~ 9100 4675
Connection ~ 9100 4625
Wire Wire Line
	3925 4850 3825 4850
Wire Wire Line
	3925 4725 3925 4850
Wire Wire Line
	3925 4750 3825 4750
Wire Wire Line
	3825 4800 3925 4800
Connection ~ 3925 4800
Connection ~ 3925 4750
Wire Wire Line
	1375 3875 1900 3875
Wire Wire Line
	4850 6500 4600 6500
Wire Wire Line
	4200 6500 3950 6500
Wire Wire Line
	1375 4775 1575 4775
Wire Wire Line
	1575 4750 1575 4875
Wire Wire Line
	1575 4825 1375 4825
Connection ~ 1575 4775
Wire Wire Line
	1575 4875 1375 4875
Connection ~ 1575 4825
Wire Wire Line
	725  6750 725  6725
Wire Wire Line
	1025 6750 1025 6725
Wire Wire Line
	1400 6750 1400 6725
Wire Wire Line
	4650 4125 4525 4125
Wire Wire Line
	4525 4125 4525 4150
Wire Wire Line
	4525 4150 3825 4150
Wire Wire Line
	3825 4200 4525 4200
Wire Wire Line
	4525 4200 4525 4225
Wire Wire Line
	4525 4225 4650 4225
Connection ~ 4850 2225
Wire Wire Line
	6250 3825 6300 3825
Wire Wire Line
	6300 3825 6300 4900
Wire Wire Line
	6350 4800 6250 4800
Wire Wire Line
	6350 2875 6350 4800
Wire Wire Line
	6350 3475 6250 3475
Connection ~ 6250 4800
Connection ~ 6350 3475
Wire Wire Line
	5825 925  5825 1000
NoConn ~ 6250 4575
NoConn ~ 6250 4525
NoConn ~ 6250 4125
NoConn ~ 6250 4075
NoConn ~ 6250 3675
NoConn ~ 6250 4475
NoConn ~ 8900 3325
NoConn ~ 8900 3425
NoConn ~ 8900 3525
NoConn ~ 8900 3575
NoConn ~ 8900 3625
NoConn ~ 8900 3675
NoConn ~ 6250 3925
NoConn ~ 6250 3975
NoConn ~ 6250 4225
NoConn ~ 6250 4375
NoConn ~ 6250 4425
Wire Wire Line
	6850 4025 6250 4025
NoConn ~ 6250 4275
NoConn ~ 3825 4000
NoConn ~ 3825 4050
NoConn ~ 1375 4475
Wire Wire Line
	8900 4375 10800 4375
Wire Wire Line
	8900 4325 10725 4325
Wire Wire Line
	2750 3725 2600 3725
Wire Wire Line
	2600 3725 2600 3675
Wire Wire Line
	2550 3725 2550 3825
Wire Wire Line
	2550 3825 2750 3825
Wire Wire Line
	2500 3775 2500 3925
Wire Wire Line
	2500 3925 2750 3925
Wire Wire Line
	2450 3825 2450 4025
Wire Wire Line
	2450 4025 2750 4025
NoConn ~ 1375 4375
Wire Wire Line
	8900 4275 10675 4275
NoConn ~ 3825 4250
NoConn ~ 3825 4300
$Comp
L tx176 U11
U 1 1 59DB5368
P 1900 1925
F 0 "U11" H 1600 2150 60  0000 C CNN
F 1 "tx176" H 1875 1725 60  0000 C CNN
F 2 "Footprints_LJ:tx176" H 1555 1630 60  0001 C CNN
F 3 "" H 1555 1630 60  0001 C CNN
	1    1900 1925
	1    0    0    -1  
$EndComp
Text GLabel 2575 1825 2    60   Output ~ 0
Int_Ref_Clk
Wire Wire Line
	2450 1825 2575 1825
$Comp
L GND #PWR0124
U 1 1 59DB6246
P 2450 2000
F 0 "#PWR0124" H 2450 1750 50  0001 C CNN
F 1 "GND" H 2450 1850 50  0000 C CNN
F 2 "" H 2450 2000 50  0001 C CNN
F 3 "" H 2450 2000 50  0001 C CNN
	1    2450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1175 1425 1175
Wire Wire Line
	1350 1825 1100 1825
Wire Wire Line
	1100 1825 1100 975 
Connection ~ 1100 975 
Wire Wire Line
	1300 1175 1300 2225
Wire Wire Line
	1300 2000 1350 2000
Connection ~ 1300 2000
Wire Wire Line
	1100 975  1425 975 
Connection ~ 1100 1825
Wire Wire Line
	1300 2225 5050 2225
Wire Wire Line
	8200 2225 5350 2225
NoConn ~ 1375 3925
NoConn ~ 1375 4025
NoConn ~ 1375 4075
NoConn ~ 1375 4125
NoConn ~ 1375 4175
NoConn ~ 1375 4225
NoConn ~ 1375 4275
NoConn ~ 6250 3725
NoConn ~ 6250 3775
NoConn ~ 6250 3875
NoConn ~ 6250 4325
NoConn ~ 8900 3375
NoConn ~ 8900 3475
NoConn ~ 1375 4325
NoConn ~ 1375 4425
$Comp
L xc6slx9_144 xc6slx9_1
U 4 1 595EA1C2
P 8625 3950
F 0 "xc6slx9_1" H 8600 4750 50  0000 C CNN
F 1 "xc6slx9_144" H 8550 4825 50  0000 C CNN
F 2 "Housings_QFP:TQFP-144_20x20mm_Pitch0.5mm" H 8850 4675 60  0001 C CNN
F 3 "" H 8850 4675 60  0001 C CNN
	4    8625 3950
	1    0    0    -1  
$EndComp
NoConn ~ 1375 3575
Wire Wire Line
	8900 4425 10725 4425
NoConn ~ 8900 4525
NoConn ~ 8900 4575
NoConn ~ 8900 3775
NoConn ~ 8900 4225
NoConn ~ 8900 3875
NoConn ~ 8900 4175
Wire Wire Line
	8900 3975 9725 3975
Wire Wire Line
	10725 4325 10725 4275
Wire Wire Line
	10725 4275 10800 4275
Wire Wire Line
	10675 4275 10675 4175
Wire Wire Line
	10675 4175 10800 4175
Wire Wire Line
	10725 4425 10725 4475
Wire Wire Line
	10725 4475 10800 4475
Wire Wire Line
	10800 4575 10675 4575
Wire Wire Line
	10675 4575 10675 4475
Wire Wire Line
	10675 4475 8900 4475
Wire Wire Line
	8900 3725 9250 3725
Wire Wire Line
	9250 3725 9250 3550
Wire Wire Line
	9250 3550 9425 3550
Wire Wire Line
	9425 3700 9325 3700
Wire Wire Line
	9325 3700 9325 3825
Wire Wire Line
	9325 3825 8900 3825
Wire Wire Line
	8900 3925 9375 3925
Wire Wire Line
	9375 3925 9375 3850
Wire Wire Line
	9375 3850 9425 3850
Wire Wire Line
	9725 4075 9550 4075
Wire Wire Line
	9550 4075 9550 4025
NoConn ~ 6250 4175
Wire Wire Line
	8900 4075 9375 4075
Wire Wire Line
	9375 4075 9375 4175
Wire Wire Line
	9375 4175 9725 4175
NoConn ~ 8900 4125
Wire Wire Line
	9550 4025 8900 4025
$Comp
L C C_TP_2
U 1 1 59EEC648
P 3175 6250
F 0 "C_TP_2" H 3200 6350 50  0000 L CNN
F 1 "1u" H 3200 6150 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 3213 6100 50  0001 C CNN
F 3 "" H 3175 6250 50  0001 C CNN
	1    3175 6250
	1    0    0    -1  
$EndComp
$Comp
L C C_TP_1
U 1 1 59EEC85B
P 2850 6250
F 0 "C_TP_1" H 2875 6350 50  0000 L CNN
F 1 "1u" H 2875 6150 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 2888 6100 50  0001 C CNN
F 3 "" H 2850 6250 50  0001 C CNN
	1    2850 6250
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0125
U 1 1 59EECE84
P 2850 6100
F 0 "#PWR0125" H 2850 5950 50  0001 C CNN
F 1 "+3V3_FPGA" H 2850 6240 50  0000 C CNN
F 2 "" H 2850 6100 50  0001 C CNN
F 3 "" H 2850 6100 50  0001 C CNN
	1    2850 6100
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0126
U 1 1 59EED08D
P 3175 6100
F 0 "#PWR0126" H 3175 5950 50  0001 C CNN
F 1 "+3V3_FPGA" H 3175 6240 50  0000 C CNN
F 2 "" H 3175 6100 50  0001 C CNN
F 3 "" H 3175 6100 50  0001 C CNN
	1    3175 6100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0127
U 1 1 59EED32F
P 2850 6400
F 0 "#PWR0127" H 2850 6250 50  0001 C CNN
F 1 "+3V3" H 2850 6540 50  0000 C CNN
F 2 "" H 2850 6400 50  0001 C CNN
F 3 "" H 2850 6400 50  0001 C CNN
	1    2850 6400
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR0128
U 1 1 59EED99A
P 3175 6400
F 0 "#PWR0128" H 3175 6250 50  0001 C CNN
F 1 "+3V3" H 3175 6540 50  0000 C CNN
F 2 "" H 3175 6400 50  0001 C CNN
F 3 "" H 3175 6400 50  0001 C CNN
	1    3175 6400
	-1   0    0    1   
$EndComp
$Comp
L C C_I2C_2
U 1 1 59EF0336
P 4575 1250
F 0 "C_I2C_2" H 4600 1350 50  0000 L CNN
F 1 "1u" H 4600 1150 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 4613 1100 50  0001 C CNN
F 3 "" H 4575 1250 50  0001 C CNN
	1    4575 1250
	1    0    0    -1  
$EndComp
$Comp
L C C_I2C_1
U 1 1 59EF033C
P 4075 1250
F 0 "C_I2C_1" H 4100 1350 50  0000 L CNN
F 1 "1u" H 4100 1150 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 4113 1100 50  0001 C CNN
F 3 "" H 4075 1250 50  0001 C CNN
	1    4075 1250
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0129
U 1 1 59EF0342
P 4075 1100
F 0 "#PWR0129" H 4075 950 50  0001 C CNN
F 1 "+3V3_FPGA" H 4075 1240 50  0000 C CNN
F 2 "" H 4075 1100 50  0001 C CNN
F 3 "" H 4075 1100 50  0001 C CNN
	1    4075 1100
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0130
U 1 1 59EF0348
P 4575 1100
F 0 "#PWR0130" H 4575 950 50  0001 C CNN
F 1 "+3V3_FPGA" H 4575 1240 50  0000 C CNN
F 2 "" H 4575 1100 50  0001 C CNN
F 3 "" H 4575 1100 50  0001 C CNN
	1    4575 1100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0131
U 1 1 59EF034E
P 4075 1400
F 0 "#PWR0131" H 4075 1250 50  0001 C CNN
F 1 "+3V3" H 4075 1540 50  0000 C CNN
F 2 "" H 4075 1400 50  0001 C CNN
F 3 "" H 4075 1400 50  0001 C CNN
	1    4075 1400
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR0132
U 1 1 59EF0354
P 4575 1400
F 0 "#PWR0132" H 4575 1250 50  0001 C CNN
F 1 "+3V3" H 4575 1540 50  0000 C CNN
F 2 "" H 4575 1400 50  0001 C CNN
F 3 "" H 4575 1400 50  0001 C CNN
	1    4575 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 1475 8150 1475
Text Notes 2525 5800 0    60   ~ 0
PowerPlaneCrossing TPs\n
$Comp
L C C_JTAG_2
U 1 1 59EFAB2D
P 8300 5875
F 0 "C_JTAG_2" H 8325 5975 50  0000 L CNN
F 1 "1u" H 8325 5775 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 8338 5725 50  0001 C CNN
F 3 "" H 8300 5875 50  0001 C CNN
	1    8300 5875
	1    0    0    -1  
$EndComp
$Comp
L C C_JTAG_1
U 1 1 59EFAB33
P 7875 5875
F 0 "C_JTAG_1" H 7900 5975 50  0000 L CNN
F 1 "1u" H 7900 5775 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 7913 5725 50  0001 C CNN
F 3 "" H 7875 5875 50  0001 C CNN
	1    7875 5875
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0133
U 1 1 59EFAB45
P 7875 6025
F 0 "#PWR0133" H 7875 5875 50  0001 C CNN
F 1 "+3V3" H 7875 6165 50  0000 C CNN
F 2 "" H 7875 6025 50  0001 C CNN
F 3 "" H 7875 6025 50  0001 C CNN
	1    7875 6025
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR0134
U 1 1 59EFAB4B
P 8300 6025
F 0 "#PWR0134" H 8300 5875 50  0001 C CNN
F 1 "+3V3" H 8300 6165 50  0000 C CNN
F 2 "" H 8300 6025 50  0001 C CNN
F 3 "" H 8300 6025 50  0001 C CNN
	1    8300 6025
	-1   0    0    1   
$EndComp
$Comp
L +1.2V #PWR0135
U 1 1 59EFB2DA
P 7875 5725
F 0 "#PWR0135" H 7875 5865 20  0001 C CNN
F 1 "+1.2V" H 7875 5835 30  0000 C CNN
F 2 "" H 7875 5725 60  0000 C CNN
F 3 "" H 7875 5725 60  0000 C CNN
	1    7875 5725
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR0136
U 1 1 59EFBE7F
P 8300 5725
F 0 "#PWR0136" H 8300 5865 20  0001 C CNN
F 1 "+1.2V" H 8300 5835 30  0000 C CNN
F 2 "" H 8300 5725 60  0000 C CNN
F 3 "" H 8300 5725 60  0000 C CNN
	1    8300 5725
	1    0    0    -1  
$EndComp
Text Notes 7600 5600 0    60   ~ 0
PowerPlaneCrossing JTAG\n\n
Text Notes 3750 925  0    60   ~ 0
PowerPlaneCrossing I2C\n\n
$Comp
L C C_RS2232_2
U 1 1 59F0704E
P 4875 3550
F 0 "C_RS2232_2" H 4900 3650 50  0000 L CNN
F 1 "1u" H 4900 3450 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 4913 3400 50  0001 C CNN
F 3 "" H 4875 3550 50  0001 C CNN
	1    4875 3550
	1    0    0    -1  
$EndComp
$Comp
L C C_RS2232_1
U 1 1 59F07054
P 4325 3550
F 0 "C_RS2232_1" H 4350 3650 50  0000 L CNN
F 1 "1u" H 4350 3450 50  0000 L CNN
F 2 "Footprints_LJ:Cap_0603_HandSoldering_1" H 4363 3400 50  0001 C CNN
F 3 "" H 4325 3550 50  0001 C CNN
	1    4325 3550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0137
U 1 1 59F0705A
P 4325 3700
F 0 "#PWR0137" H 4325 3550 50  0001 C CNN
F 1 "+3V3" H 4325 3840 50  0000 C CNN
F 2 "" H 4325 3700 50  0001 C CNN
F 3 "" H 4325 3700 50  0001 C CNN
	1    4325 3700
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR0138
U 1 1 59F07060
P 4875 3700
F 0 "#PWR0138" H 4875 3550 50  0001 C CNN
F 1 "+3V3" H 4875 3840 50  0000 C CNN
F 2 "" H 4875 3700 50  0001 C CNN
F 3 "" H 4875 3700 50  0001 C CNN
	1    4875 3700
	-1   0    0    1   
$EndComp
Text Notes 4075 3325 0    60   ~ 0
PowerPlaneCrossing RS2232\n\n\n
$Comp
L +3V3_FPGA #PWR0139
U 1 1 59F07B4B
P 4875 3400
F 0 "#PWR0139" H 4875 3250 50  0001 C CNN
F 1 "+3V3_FPGA" H 4875 3540 50  0000 C CNN
F 2 "" H 4875 3400 50  0001 C CNN
F 3 "" H 4875 3400 50  0001 C CNN
	1    4875 3400
	1    0    0    -1  
$EndComp
$Comp
L +3V3_FPGA #PWR0140
U 1 1 59F08003
P 4325 3400
F 0 "#PWR0140" H 4325 3250 50  0001 C CNN
F 1 "+3V3_FPGA" H 4325 3540 50  0000 C CNN
F 2 "" H 4325 3400 50  0001 C CNN
F 3 "" H 4325 3400 50  0001 C CNN
	1    4325 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 3375 6825 3175
NoConn ~ 6250 4625
NoConn ~ 6250 3425
Wire Wire Line
	6250 4725 6350 4725
Connection ~ 6350 4725
Wire Wire Line
	6250 3625 6350 3625
Connection ~ 6350 3625
Wire Wire Line
	1375 3975 1900 3975
Text HLabel 1900 3975 2    60   Output ~ 0
DIV_SW1
Wire Wire Line
	1375 3475 1375 3375
Wire Wire Line
	1375 3375 1475 3375
$Comp
L GND #PWR0141
U 1 1 5A009415
P 1475 3375
F 0 "#PWR0141" H 1475 3125 50  0001 C CNN
F 1 "GND" H 1475 3225 50  0000 C CNN
F 2 "" H 1475 3375 50  0001 C CNN
F 3 "" H 1475 3375 50  0001 C CNN
	1    1475 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 3525 1900 3525
Text HLabel 1900 3525 2    60   Output ~ 0
DIV_SW2
$EndSCHEMATC
