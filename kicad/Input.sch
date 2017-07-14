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
Sheet 5 5
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
L TC1-1T T?
U 1 1 595E12BB
P 3925 1925
F 0 "T?" H 3925 2275 50  0000 C CNN
F 1 "TC1-1T" H 3925 1675 50  0000 C CNN
F 2 "" H 3925 1575 50  0001 C CIN
F 3 "" H 3925 2075 50  0001 C CNN
	1    3925 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 1825 4275 1825
$Comp
L GND #PWR?
U 1 1 595E1304
P 4275 1825
F 0 "#PWR?" H 4275 1575 50  0001 C CNN
F 1 "GND" H 4275 1675 50  0000 C CNN
F 2 "" H 4275 1825 50  0001 C CNN
F 3 "" H 4275 1825 50  0001 C CNN
	1    4275 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 1625 4375 1625
Wire Wire Line
	4125 2025 4375 2025
$Comp
L R R?
U 1 1 595E1341
P 4525 1625
F 0 "R?" V 4605 1625 50  0000 C CNN
F 1 "100R" V 4525 1625 50  0000 C CNN
F 2 "" V 4455 1625 50  0001 C CNN
F 3 "" H 4525 1625 50  0001 C CNN
	1    4525 1625
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 595E1386
P 4525 2025
F 0 "R?" V 4605 2025 50  0000 C CNN
F 1 "100R" V 4525 2025 50  0000 C CNN
F 2 "" V 4455 2025 50  0001 C CNN
F 3 "" H 4525 2025 50  0001 C CNN
	1    4525 2025
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 595E15F9
P 3725 2025
F 0 "#PWR?" H 3725 1775 50  0001 C CNN
F 1 "GND" H 3725 1875 50  0000 C CNN
F 2 "" H 3725 2025 50  0001 C CNN
F 3 "" H 3725 2025 50  0001 C CNN
	1    3725 2025
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 595E183C
P 4775 1825
F 0 "R?" V 4855 1825 50  0000 C CNN
F 1 "560k" V 4775 1825 50  0000 C CNN
F 2 "" V 4705 1825 50  0001 C CNN
F 3 "" H 4775 1825 50  0001 C CNN
	1    4775 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 1625 5525 1625
Wire Wire Line
	4775 1625 4775 1675
Wire Wire Line
	4775 1975 4775 2025
Wire Wire Line
	4675 2025 5525 2025
Connection ~ 4775 1625
Connection ~ 4775 2025
$Comp
L HSMS-281C-TR1G V?
U 1 1 595E1D22
P 5425 1825
F 0 "V?" H 5125 1875 60  0000 C CNN
F 1 "HSMS-281C-TR1G" H 5400 1525 60  0000 C CNN
F 2 "" H 5180 1750 60  0001 C CNN
F 3 "" H 5180 1750 60  0001 C CNN
	1    5425 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 2025 5075 1875
Wire Wire Line
	5450 2025 5450 1875
Connection ~ 5075 2025
Wire Wire Line
	5250 1625 5250 1800
Connection ~ 5250 1625
Connection ~ 5450 2025
$Comp
L LTC6957 U?
U 1 1 595E2202
P 6950 2475
F 0 "U?" H 6350 3875 60  0000 C CNN
F 1 "LTC6957" H 6450 4025 60  0000 C CNN
F 2 "" H 6950 2475 60  0001 C CNN
F 3 "" H 6950 2475 60  0001 C CNN
	1    6950 2475
	1    0    0    -1  
$EndComp
$Comp
L TC1-1T T?
U 1 1 595E25F6
P 3900 3800
F 0 "T?" H 3900 4150 50  0000 C CNN
F 1 "TC1-1T" H 3900 3550 50  0000 C CNN
F 2 "" H 3900 3450 50  0001 C CIN
F 3 "" H 3900 3950 50  0001 C CNN
	1    3900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3700 4250 3700
$Comp
L GND #PWR?
U 1 1 595E25FE
P 4250 3700
F 0 "#PWR?" H 4250 3450 50  0001 C CNN
F 1 "GND" H 4250 3550 50  0000 C CNN
F 2 "" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3500 4350 3500
Wire Wire Line
	4100 3900 4350 3900
$Comp
L R R?
U 1 1 595E2606
P 4500 3500
F 0 "R?" V 4580 3500 50  0000 C CNN
F 1 "100R" V 4500 3500 50  0000 C CNN
F 2 "" V 4430 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 595E260D
P 4500 3900
F 0 "R?" V 4580 3900 50  0000 C CNN
F 1 "100R" V 4500 3900 50  0000 C CNN
F 2 "" V 4430 3900 50  0001 C CNN
F 3 "" H 4500 3900 50  0001 C CNN
	1    4500 3900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 595E2614
P 3700 3900
F 0 "#PWR?" H 3700 3650 50  0001 C CNN
F 1 "GND" H 3700 3750 50  0000 C CNN
F 2 "" H 3700 3900 50  0001 C CNN
F 3 "" H 3700 3900 50  0001 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 595E261A
P 4750 3700
F 0 "R?" V 4830 3700 50  0000 C CNN
F 1 "560k" V 4750 3700 50  0000 C CNN
F 2 "" V 4680 3700 50  0001 C CNN
F 3 "" H 4750 3700 50  0001 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3500 5500 3500
Wire Wire Line
	4750 3500 4750 3550
Wire Wire Line
	4750 3850 4750 3900
Wire Wire Line
	4650 3900 5500 3900
Connection ~ 4750 3500
Connection ~ 4750 3900
$Comp
L HSMS-281C-TR1G V?
U 1 1 595E2627
P 5400 3700
F 0 "V?" H 5100 3750 60  0000 C CNN
F 1 "HSMS-281C-TR1G" H 5375 3400 60  0000 C CNN
F 2 "" H 5155 3625 60  0001 C CNN
F 3 "" H 5155 3625 60  0001 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3900 5050 3750
Wire Wire Line
	5425 3900 5425 3750
Connection ~ 5050 3900
Wire Wire Line
	5225 3500 5225 3675
Connection ~ 5225 3500
Connection ~ 5425 3900
$Comp
L LTC6957 U?
U 1 1 595E2634
P 6925 4350
F 0 "U?" H 6325 5750 60  0000 C CNN
F 1 "LTC6957" H 6425 5900 60  0000 C CNN
F 2 "" H 6925 4350 60  0001 C CNN
F 3 "" H 6925 4350 60  0001 C CNN
	1    6925 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
