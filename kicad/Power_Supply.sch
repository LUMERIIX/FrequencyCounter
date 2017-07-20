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
Sheet 2 5
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
L L_Core_Ferrite L1
U 1 1 595D36B4
P 4500 2275
F 0 "L1" V 4450 2275 50  0000 C CNN
F 1 "2.2u" V 4610 2275 50  0000 C CNN
F 2 "Footprints_LJ:LPS5030" H 4500 2275 50  0001 C CNN
F 3 "" H 4500 2275 50  0001 C CNN
	1    4500 2275
	0    -1   -1   0   
$EndComp
$Comp
L L_Core_Ferrite L2
U 1 1 595D375F
P 4500 2625
F 0 "L2" V 4450 2625 50  0000 C CNN
F 1 "2.2u" V 4610 2625 50  0000 C CNN
F 2 "Footprints_LJ:LPS5030" H 4500 2625 50  0001 C CNN
F 3 "" H 4500 2625 50  0001 C CNN
	1    4500 2625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2725 4650 2625
Wire Wire Line
	4350 2725 4650 2725
Wire Wire Line
	4650 2375 4650 2275
Wire Wire Line
	4350 2375 4650 2375
Wire Wire Line
	4650 2275 4750 2275
Wire Wire Line
	4750 2275 4750 1175
Wire Wire Line
	4750 1175 5650 1175
Wire Wire Line
	5650 1125 5650 1575
$Comp
L C C1
U 1 1 595D3A42
P 5000 1325
F 0 "C1" H 5025 1425 50  0000 L CNN
F 1 "10u" H 5025 1225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5038 1175 50  0001 C CNN
F 3 "" H 5000 1325 50  0001 C CNN
	1    5000 1325
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 595D3A89
P 5350 1325
F 0 "C2" H 5375 1425 50  0000 L CNN
F 1 "10u" H 5375 1225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 1175 50  0001 C CNN
F 3 "" H 5350 1325 50  0001 C CNN
	1    5350 1325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 595D3B08
P 5000 1475
F 0 "#PWR01" H 5000 1225 50  0001 C CNN
F 1 "GND" H 5000 1325 50  0000 C CNN
F 2 "" H 5000 1475 50  0001 C CNN
F 3 "" H 5000 1475 50  0001 C CNN
	1    5000 1475
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 595D3B28
P 5350 1475
F 0 "#PWR02" H 5350 1225 50  0001 C CNN
F 1 "GND" H 5350 1325 50  0000 C CNN
F 2 "" H 5350 1475 50  0001 C CNN
F 3 "" H 5350 1475 50  0001 C CNN
	1    5350 1475
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 595D3B60
P 5650 1725
F 0 "R1" V 5730 1725 50  0000 C CNN
F 1 "180k" V 5650 1725 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5580 1725 50  0001 C CNN
F 3 "" H 5650 1725 50  0001 C CNN
	1    5650 1725
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 595D3BBD
P 5650 2225
F 0 "R4" V 5730 2225 50  0000 C CNN
F 1 "180k" V 5650 2225 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5580 2225 50  0001 C CNN
F 3 "" H 5650 2225 50  0001 C CNN
	1    5650 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1875 5650 2075
$Comp
L GND #PWR03
U 1 1 595D3C6A
P 5650 2375
F 0 "#PWR03" H 5650 2125 50  0001 C CNN
F 1 "GND" H 5650 2225 50  0000 C CNN
F 2 "" H 5650 2375 50  0001 C CNN
F 3 "" H 5650 2375 50  0001 C CNN
	1    5650 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2475 5250 2475
Wire Wire Line
	5250 2475 5250 2000
Wire Wire Line
	5250 2000 5650 2000
Connection ~ 5650 2000
Wire Wire Line
	4650 2625 5950 2625
Wire Wire Line
	5950 2625 5950 1500
$Comp
L C C4
U 1 1 595D41BD
P 6550 1675
F 0 "C4" H 6575 1775 50  0000 L CNN
F 1 "10u" H 6575 1575 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6588 1525 50  0001 C CNN
F 3 "" H 6550 1675 50  0001 C CNN
	1    6550 1675
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 595D41C4
P 6200 1825
F 0 "#PWR04" H 6200 1575 50  0001 C CNN
F 1 "GND" H 6200 1675 50  0000 C CNN
F 2 "" H 6200 1825 50  0001 C CNN
F 3 "" H 6200 1825 50  0001 C CNN
	1    6200 1825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 595D41CA
P 6550 1825
F 0 "#PWR05" H 6550 1575 50  0001 C CNN
F 1 "GND" H 6550 1675 50  0000 C CNN
F 2 "" H 6550 1825 50  0001 C CNN
F 3 "" H 6550 1825 50  0001 C CNN
	1    6550 1825
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 595D41D0
P 6850 2075
F 0 "R2" V 6930 2075 50  0000 C CNN
F 1 "100k" V 6850 2075 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6780 2075 50  0001 C CNN
F 3 "" H 6850 2075 50  0001 C CNN
	1    6850 2075
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 595D41D7
P 6850 2575
F 0 "R6" V 6930 2575 50  0000 C CNN
F 1 "20k" V 6850 2575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6780 2575 50  0001 C CNN
F 3 "" H 6850 2575 50  0001 C CNN
	1    6850 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2225 6850 2425
$Comp
L GND #PWR06
U 1 1 595D41DF
P 6850 2725
F 0 "#PWR06" H 6850 2475 50  0001 C CNN
F 1 "GND" H 6850 2575 50  0000 C CNN
F 2 "" H 6850 2725 50  0001 C CNN
F 3 "" H 6850 2725 50  0001 C CNN
	1    6850 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2825 6450 2825
Wire Wire Line
	6450 2825 6450 2350
Wire Wire Line
	6450 2350 6850 2350
Connection ~ 6850 2350
$Comp
L +1.2V #PWR07
U 1 1 595D43CB
P 5650 1125
F 0 "#PWR07" H 5650 1265 20  0001 C CNN
F 1 "+1.2V" H 5650 1235 30  0000 C CNN
F 2 "" H 5650 1125 60  0000 C CNN
F 3 "" H 5650 1125 60  0000 C CNN
	1    5650 1125
	1    0    0    -1  
$EndComp
$Comp
L LP3871 U2
U 1 1 595D50EE
P 9050 5950
F 0 "U2" H 9050 6900 60  0000 C CNN
F 1 "LP3871" H 9150 6800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-5" H 9050 5950 60  0001 C CNN
F 3 "" H 9050 5950 60  0001 C CNN
	1    9050 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 595D5A7A
P 9100 5800
F 0 "#PWR08" H 9100 5550 50  0001 C CNN
F 1 "GND" H 9100 5650 50  0000 C CNN
F 2 "" H 9100 5800 50  0001 C CNN
F 3 "" H 9100 5800 50  0001 C CNN
	1    9100 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 595D5BC0
P 10075 5550
F 0 "#PWR09" H 10075 5300 50  0001 C CNN
F 1 "GND" H 10075 5400 50  0000 C CNN
F 2 "" H 10075 5550 50  0001 C CNN
F 3 "" H 10075 5550 50  0001 C CNN
	1    10075 5550
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 595D5B10
P 10075 5375
F 0 "C10" H 10100 5475 50  0000 L CNN
F 1 "10u" H 10100 5275 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10113 5225 50  0001 C CNN
F 3 "" H 10075 5375 50  0001 C CNN
	1    10075 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5500 8600 5500
$Comp
L GND #PWR010
U 1 1 595D677C
P 9625 5500
F 0 "#PWR010" H 9625 5250 50  0001 C CNN
F 1 "GND" H 9625 5350 50  0000 C CNN
F 2 "" H 9625 5500 50  0001 C CNN
F 3 "" H 9625 5500 50  0001 C CNN
	1    9625 5500
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 595D6CF9
P 8400 5350
F 0 "R10" V 8480 5350 50  0000 C CNN
F 1 "10k" V 8400 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 5350 50  0001 C CNN
F 3 "" H 8400 5350 50  0001 C CNN
	1    8400 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 595D6E7D
P 8175 5500
F 0 "#PWR011" H 8175 5250 50  0001 C CNN
F 1 "GND" H 8175 5350 50  0000 C CNN
F 2 "" H 8175 5500 50  0001 C CNN
F 3 "" H 8175 5500 50  0001 C CNN
	1    8175 5500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 595D6EDC
P 10075 5150
F 0 "#PWR012" H 10075 5000 50  0001 C CNN
F 1 "+3.3V" H 10075 5290 50  0000 C CNN
F 2 "" H 10075 5150 50  0001 C CNN
F 3 "" H 10075 5150 50  0001 C CNN
	1    10075 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2975 7700 2975
Wire Wire Line
	7700 2975 7700 1875
Wire Wire Line
	7700 1875 8600 1875
Wire Wire Line
	8600 1825 8600 2275
$Comp
L C C5
U 1 1 595DA0C3
P 7950 2025
F 0 "C5" H 7975 2125 50  0000 L CNN
F 1 "10u" H 7975 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7988 1875 50  0001 C CNN
F 3 "" H 7950 2025 50  0001 C CNN
	1    7950 2025
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 595DA0CA
P 8300 2025
F 0 "C6" H 8325 2125 50  0000 L CNN
F 1 "10u" H 8325 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8338 1875 50  0001 C CNN
F 3 "" H 8300 2025 50  0001 C CNN
	1    8300 2025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 595DA0D1
P 7950 2175
F 0 "#PWR013" H 7950 1925 50  0001 C CNN
F 1 "GND" H 7950 2025 50  0000 C CNN
F 2 "" H 7950 2175 50  0001 C CNN
F 3 "" H 7950 2175 50  0001 C CNN
	1    7950 2175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 595DA0D7
P 8300 2175
F 0 "#PWR014" H 8300 1925 50  0001 C CNN
F 1 "GND" H 8300 2025 50  0000 C CNN
F 2 "" H 8300 2175 50  0001 C CNN
F 3 "" H 8300 2175 50  0001 C CNN
	1    8300 2175
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 595DA0DD
P 8600 2425
F 0 "R5" V 8680 2425 50  0000 C CNN
F 1 "100k" V 8600 2425 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 2425 50  0001 C CNN
F 3 "" H 8600 2425 50  0001 C CNN
	1    8600 2425
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 595DA0E4
P 8600 2925
F 0 "R7" V 8680 2925 50  0000 C CNN
F 1 "22k" V 8600 2925 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 2925 50  0001 C CNN
F 3 "" H 8600 2925 50  0001 C CNN
	1    8600 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2575 8600 2775
$Comp
L GND #PWR015
U 1 1 595DA0EC
P 8600 3075
F 0 "#PWR015" H 8600 2825 50  0001 C CNN
F 1 "GND" H 8600 2925 50  0000 C CNN
F 2 "" H 8600 3075 50  0001 C CNN
F 3 "" H 8600 3075 50  0001 C CNN
	1    8600 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3175 8200 3175
Wire Wire Line
	8200 3175 8200 2700
Wire Wire Line
	8200 2700 8600 2700
Connection ~ 8600 2700
$Comp
L L_Core_Ferrite L3
U 1 1 595DA336
P 4500 2975
F 0 "L3" V 4450 2975 50  0000 C CNN
F 1 "2.2u" V 4610 2975 50  0000 C CNN
F 2 "Footprints_LJ:LPS5030" H 4500 2975 50  0001 C CNN
F 3 "" H 4500 2975 50  0001 C CNN
	1    4500 2975
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3075 4650 3075
Wire Wire Line
	4650 3075 4650 2975
Wire Wire Line
	4350 4325 4350 4625
Connection ~ 4350 4475
Wire Wire Line
	2100 4525 2100 4375
$Comp
L GND #PWR016
U 1 1 595DAC6E
P 2100 4525
F 0 "#PWR016" H 2100 4275 50  0001 C CNN
F 1 "GND" H 2100 4375 50  0000 C CNN
F 2 "" H 2100 4525 50  0001 C CNN
F 3 "" H 2100 4525 50  0001 C CNN
	1    2100 4525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 595DACAA
P 4350 4625
F 0 "#PWR017" H 4350 4375 50  0001 C CNN
F 1 "GND" H 4350 4475 50  0000 C CNN
F 2 "" H 4350 4625 50  0001 C CNN
F 3 "" H 4350 4625 50  0001 C CNN
	1    4350 4625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 595DCB17
P 2100 4125
F 0 "#PWR018" H 2100 3875 50  0001 C CNN
F 1 "GND" H 2100 3975 50  0000 C CNN
F 2 "" H 2100 4125 50  0001 C CNN
F 3 "" H 2100 4125 50  0001 C CNN
	1    2100 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3675 2100 4125
Connection ~ 5350 1175
Connection ~ 5000 1175
Connection ~ 7950 1875
Connection ~ 8300 1875
NoConn ~ 4350 4025
NoConn ~ 4350 3925
NoConn ~ 4350 3725
NoConn ~ 4350 3625
Connection ~ 5650 1175
$Comp
L SW_Push SW1
U 1 1 59642ABE
P 1275 3500
F 0 "SW1" H 1325 3600 50  0000 L CNN
F 1 "SW_Push" H 1275 3440 50  0000 C CNN
F 2 "Footprints_LJ:Mini-Taster-4pin" H 1275 3700 50  0001 C CNN
F 3 "" H 1275 3700 50  0001 C CNN
	1    1275 3500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR019
U 1 1 596437E6
P 1275 3725
F 0 "#PWR019" H 1275 3475 50  0001 C CNN
F 1 "GND" H 1275 3575 50  0000 C CNN
F 2 "" H 1275 3725 50  0001 C CNN
F 3 "" H 1275 3725 50  0001 C CNN
	1    1275 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 3275 2100 3275
Wire Wire Line
	1275 2275 1275 3300
Wire Wire Line
	1050 2925 2100 2925
Wire Wire Line
	2100 2575 1275 2575
Connection ~ 1275 2925
Connection ~ 1275 2575
$Comp
L R R3
U 1 1 59645345
P 1275 2125
F 0 "R3" V 1355 2125 50  0000 C CNN
F 1 "10k" V 1275 2125 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1205 2125 50  0001 C CNN
F 3 "" H 1275 2125 50  0001 C CNN
	1    1275 2125
	1    0    0    -1  
$EndComp
Text HLabel 1050 2925 0    60   Output ~ 0
~RESET
$Comp
L +5V #PWR020
U 1 1 5964FB81
P 1275 1950
F 0 "#PWR020" H 1275 1800 50  0001 C CNN
F 1 "+5V" H 1275 2090 50  0000 C CNN
F 2 "" H 1275 1950 50  0001 C CNN
F 3 "" H 1275 1950 50  0001 C CNN
	1    1275 1950
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 59650A31
P 1750 2100
F 0 "C7" H 1775 2200 50  0000 L CNN
F 1 "100n" H 1775 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1788 1950 50  0001 C CNN
F 3 "" H 1750 2100 50  0001 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 59650E00
P 1750 1900
F 0 "#PWR021" H 1750 1750 50  0001 C CNN
F 1 "+5V" H 1750 2040 50  0000 C CNN
F 2 "" H 1750 1900 50  0001 C CNN
F 3 "" H 1750 1900 50  0001 C CNN
	1    1750 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 59650F33
P 1750 2250
F 0 "#PWR022" H 1750 2000 50  0001 C CNN
F 1 "GND" H 1750 2100 50  0000 C CNN
F 2 "" H 1750 2250 50  0001 C CNN
F 3 "" H 1750 2250 50  0001 C CNN
	1    1750 2250
	1    0    0    -1  
$EndComp
Connection ~ 8600 1875
NoConn ~ 4350 3375
NoConn ~ 4350 3475
Connection ~ 2100 3975
Connection ~ 2100 3825
$Comp
L +3V3_FPGA #PWR023
U 1 1 5971CBE5
P 8600 1825
F 0 "#PWR023" H 8600 1675 50  0001 C CNN
F 1 "+3V3_FPGA" H 8600 1965 50  0000 C CNN
F 2 "" H 8600 1825 50  0001 C CNN
F 3 "" H 8600 1825 50  0001 C CNN
	1    8600 1825
	1    0    0    -1  
$EndComp
$Comp
L +3V6 #PWR024
U 1 1 597219FA
P 6850 1475
F 0 "#PWR024" H 6850 1325 50  0001 C CNN
F 1 "+3V6" H 6850 1615 50  0000 C CNN
F 2 "" H 6850 1475 50  0001 C CNN
F 3 "" H 6850 1475 50  0001 C CNN
	1    6850 1475
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 595D6E13
P 8175 5350
F 0 "C9" H 8200 5450 50  0000 L CNN
F 1 "10u" H 8200 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8213 5200 50  0001 C CNN
F 3 "" H 8175 5350 50  0001 C CNN
	1    8175 5350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 595D41B6
P 6200 1675
F 0 "C3" H 6225 1775 50  0000 L CNN
F 1 "10u" H 6225 1575 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6238 1525 50  0001 C CNN
F 3 "" H 6200 1675 50  0001 C CNN
	1    6200 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1475 6850 1925
Wire Wire Line
	10075 5150 10075 5225
Wire Wire Line
	10075 5200 9625 5200
Wire Wire Line
	9625 5200 9625 5275
Wire Wire Line
	5950 1500 6850 1500
Wire Wire Line
	6200 1500 6200 1525
Wire Wire Line
	6550 1500 6550 1525
Connection ~ 6200 1500
Connection ~ 6550 1500
Connection ~ 6850 1500
Wire Wire Line
	1275 1950 1275 1975
Wire Wire Line
	8400 5175 8400 5200
Wire Wire Line
	8600 5175 8600 5275
$Comp
L +3V6 #PWR025
U 1 1 5977DEC2
P 8175 5150
F 0 "#PWR025" H 8175 5000 50  0001 C CNN
F 1 "+3V6" H 8175 5290 50  0000 C CNN
F 2 "" H 8175 5150 50  0001 C CNN
F 3 "" H 8175 5150 50  0001 C CNN
	1    8175 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8175 5150 8175 5200
Wire Wire Line
	8175 5175 8600 5175
Connection ~ 8175 5175
Connection ~ 8400 5175
$Comp
L TPS650250 U1
U 1 1 595D346C
P 3300 3775
F 0 "U1" H 2350 5525 60  0000 C CNN
F 1 "TPS650250" H 2550 5425 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-32-1EP_5x5mm_Pitch0.5mm" H 4750 1525 60  0001 C CNN
F 3 "" H 4750 1525 60  0001 C CNN
	1    3300 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3125 2100 3125
Wire Wire Line
	2050 2775 2100 2775
Wire Wire Line
	2050 2425 2100 2425
Connection ~ 2050 2775
Wire Wire Line
	2050 2275 2100 2275
Connection ~ 2050 2425
Wire Wire Line
	1750 1925 2050 1925
Connection ~ 2050 2275
Wire Wire Line
	1750 1900 1750 1950
Connection ~ 1750 1925
Connection ~ 1275 3275
Wire Wire Line
	1275 3725 1275 3700
Wire Wire Line
	2050 1925 2050 3525
Wire Wire Line
	10075 5550 10075 5525
Connection ~ 10075 5200
Wire Wire Line
	2050 3525 2100 3525
Connection ~ 2050 3125
$EndSCHEMATC
