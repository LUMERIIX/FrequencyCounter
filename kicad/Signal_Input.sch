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
L GND #PWR0101
U 1 1 595E1304
P 3725 1675
F 0 "#PWR0101" H 3725 1425 50  0001 C CNN
F 1 "GND" H 3725 1525 50  0000 C CNN
F 2 "" H 3725 1675 50  0001 C CNN
F 3 "" H 3725 1675 50  0001 C CNN
	1    3725 1675
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 595E1341
P 3975 1325
F 0 "R30" V 4055 1325 50  0000 C CNN
F 1 "100R" V 3975 1325 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3905 1325 50  0001 C CNN
F 3 "" H 3975 1325 50  0001 C CNN
	1    3975 1325
	0    1    1    0   
$EndComp
$Comp
L R R33
U 1 1 595E1386
P 3975 1975
F 0 "R33" V 4055 1975 50  0000 C CNN
F 1 "100R" V 3975 1975 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3905 1975 50  0001 C CNN
F 3 "" H 3975 1975 50  0001 C CNN
	1    3975 1975
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0102
U 1 1 595E15F9
P 3175 1875
F 0 "#PWR0102" H 3175 1625 50  0001 C CNN
F 1 "GND" H 3175 1725 50  0000 C CNN
F 2 "" H 3175 1875 50  0001 C CNN
F 3 "" H 3175 1875 50  0001 C CNN
	1    3175 1875
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 595E183C
P 4225 1500
F 0 "R31" V 4305 1500 50  0000 C CNN
F 1 "560R" V 4225 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4155 1500 50  0001 C CNN
F 3 "" H 4225 1500 50  0001 C CNN
	1    4225 1500
	1    0    0    -1  
$EndComp
$Comp
L HSMS-281C-TR1G V1
U 1 1 595E1D22
P 4875 1675
F 0 "V1" H 4575 1725 60  0000 C CNN
F 1 "HSMS-281C-TR1G" H 4725 1400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 4630 1600 60  0001 C CNN
F 3 "" H 4630 1600 60  0001 C CNN
	1    4875 1675
	1    0    0    -1  
$EndComp
$Comp
L MC12093 U10
U 1 1 595E43B3
P 6125 3150
F 0 "U10" H 5800 3025 60  0000 C CNN
F 1 "MC12093" H 5950 2950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5800 3025 60  0001 C CNN
F 3 "" H 5800 3025 60  0001 C CNN
	1    6125 3150
	1    0    0    -1  
$EndComp
$Comp
L C C43
U 1 1 595E461E
P 5375 1325
F 0 "C43" H 5400 1425 50  0000 L CNN
F 1 "100n" H 5400 1225 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5413 1175 50  0001 C CNN
F 3 "" H 5375 1325 50  0001 C CNN
	1    5375 1325
	0    1    1    0   
$EndComp
$Comp
L C C45
U 1 1 595E4765
P 5375 1975
F 0 "C45" H 5400 2075 50  0000 L CNN
F 1 "100n" H 5400 1875 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5413 1825 50  0001 C CNN
F 3 "" H 5375 1975 50  0001 C CNN
	1    5375 1975
	0    1    1    0   
$EndComp
$Comp
L C C44
U 1 1 595E4B59
P 2900 1475
F 0 "C44" H 2925 1575 50  0000 L CNN
F 1 "100n" H 2925 1375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2938 1325 50  0001 C CNN
F 3 "" H 2900 1475 50  0001 C CNN
	1    2900 1475
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0103
U 1 1 595E4D57
P 6325 2225
F 0 "#PWR0103" H 6325 1975 50  0001 C CNN
F 1 "GND" H 6325 2075 50  0000 C CNN
F 2 "" H 6325 2225 50  0001 C CNN
F 3 "" H 6325 2225 50  0001 C CNN
	1    6325 2225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0104
U 1 1 595E55DF
P 6600 3925
F 0 "#PWR0104" H 6600 3675 50  0001 C CNN
F 1 "GND" H 6600 3775 50  0000 C CNN
F 2 "" H 6600 3925 50  0001 C CNN
F 3 "" H 6600 3925 50  0001 C CNN
	1    6600 3925
	1    0    0    -1  
$EndComp
$Comp
L C C47
U 1 1 595E5982
P 4950 3225
F 0 "C47" H 4975 3325 50  0000 L CNN
F 1 "100n" H 4975 3125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4988 3075 50  0001 C CNN
F 3 "" H 4950 3225 50  0001 C CNN
	1    4950 3225
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0105
U 1 1 595E5A7F
P 4950 3075
F 0 "#PWR0105" H 4950 2925 50  0001 C CNN
F 1 "+3.3V" H 4950 3215 50  0000 C CNN
F 2 "" H 4950 3075 50  0001 C CNN
F 3 "" H 4950 3075 50  0001 C CNN
	1    4950 3075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0106
U 1 1 595E5BA0
P 4950 3425
F 0 "#PWR0106" H 4950 3175 50  0001 C CNN
F 1 "GND" H 4950 3275 50  0000 C CNN
F 2 "" H 4950 3425 50  0001 C CNN
F 3 "" H 4950 3425 50  0001 C CNN
	1    4950 3425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0107
U 1 1 595E5D32
P 5600 4300
F 0 "#PWR0107" H 5600 4050 50  0001 C CNN
F 1 "GND" H 5600 4150 50  0000 C CNN
F 2 "" H 5600 4300 50  0001 C CNN
F 3 "" H 5600 4300 50  0001 C CNN
	1    5600 4300
	1    0    0    -1  
$EndComp
$Comp
L C C49
U 1 1 595E6100
P 5375 4125
F 0 "C49" H 5400 4225 50  0000 L CNN
F 1 "1n" H 5400 4025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5413 3975 50  0001 C CNN
F 3 "" H 5375 4125 50  0001 C CNN
	1    5375 4125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0108
U 1 1 595E6248
P 5375 4300
F 0 "#PWR0108" H 5375 4050 50  0001 C CNN
F 1 "GND" H 5375 4150 50  0000 C CNN
F 2 "" H 5375 4300 50  0001 C CNN
F 3 "" H 5375 4300 50  0001 C CNN
	1    5375 4300
	1    0    0    -1  
$EndComp
$Comp
L C C48
U 1 1 595E640D
P 4400 3725
F 0 "C48" H 4425 3825 50  0000 L CNN
F 1 "1n" H 4425 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4438 3575 50  0001 C CNN
F 3 "" H 4400 3725 50  0001 C CNN
	1    4400 3725
	0    1    1    0   
$EndComp
$Comp
L R R34
U 1 1 595E646F
P 4250 3950
F 0 "R34" V 4330 3950 50  0000 C CNN
F 1 "50R" V 4250 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0109
U 1 1 595E6503
P 4250 4275
F 0 "#PWR0109" H 4250 4025 50  0001 C CNN
F 1 "GND" H 4250 4125 50  0000 C CNN
F 2 "" H 4250 4275 50  0001 C CNN
F 3 "" H 4250 4275 50  0001 C CNN
	1    4250 4275
	1    0    0    -1  
$EndComp
$Comp
L CONN_COAXIAL J3
U 1 1 595E750B
P 2200 3725
F 0 "J3" H 2210 3845 50  0000 C CNN
F 1 "CONN_COAXIAL" V 2315 3725 50  0000 C CNN
F 2 "Footprints_LJ:bncf-horizontal" H 2200 3725 50  0001 C CNN
F 3 "" H 2200 3725 50  0001 C CNN
	1    2200 3725
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0110
U 1 1 595E7846
P 2200 3925
F 0 "#PWR0110" H 2200 3675 50  0001 C CNN
F 1 "GND" H 2200 3775 50  0000 C CNN
F 2 "" H 2200 3925 50  0001 C CNN
F 3 "" H 2200 3925 50  0001 C CNN
	1    2200 3925
	1    0    0    -1  
$EndComp
Text Label 2425 3725 0    60   ~ 0
CH_A
$Comp
L CONN_COAXIAL J2
U 1 1 595E7BBF
P 1900 1475
F 0 "J2" H 1910 1595 50  0000 C CNN
F 1 "CONN_COAXIAL" V 2015 1475 50  0000 C CNN
F 2 "Footprints_LJ:bncf-horizontal" H 1900 1475 50  0001 C CNN
F 3 "" H 1900 1475 50  0001 C CNN
	1    1900 1475
	-1   0    0    -1  
$EndComp
Text Label 2125 1475 0    60   ~ 0
Ext_Ref
$Comp
L GND #PWR0111
U 1 1 595E865F
P 1900 1875
F 0 "#PWR0111" H 1900 1625 50  0001 C CNN
F 1 "GND" H 1900 1725 50  0000 C CNN
F 2 "" H 1900 1875 50  0001 C CNN
F 3 "" H 1900 1875 50  0001 C CNN
	1    1900 1875
	1    0    0    -1  
$EndComp
$Comp
L LTC6957-3 U9
U 1 1 595E9C6F
P 7175 2350
F 0 "U9" H 6575 3750 60  0000 C CNN
F 1 "LTC6957-3" H 6775 3675 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-12-1EP_3x3mm_Pitch0.45mm" H 7175 2350 60  0001 C CNN
F 3 "" H 7175 2350 60  0001 C CNN
	1    7175 2350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0112
U 1 1 595E9F37
P 6050 1875
F 0 "#PWR0112" H 6050 1725 50  0001 C CNN
F 1 "+3.3V" H 6050 2015 50  0000 C CNN
F 2 "" H 6050 1875 50  0001 C CNN
F 3 "" H 6050 1875 50  0001 C CNN
	1    6050 1875
	1    0    0    -1  
$EndComp
NoConn ~ 7925 1900
Text HLabel 7550 3550 2    60   Output ~ 0
Clk_A
$Comp
L +3.3V #PWR0113
U 1 1 595EC3C2
P 6800 4075
F 0 "#PWR0113" H 6800 3925 50  0001 C CNN
F 1 "+3.3V" H 6800 4215 50  0000 C CNN
F 2 "" H 6800 4075 50  0001 C CNN
F 3 "" H 6800 4075 50  0001 C CNN
	1    6800 4075
	1    0    0    -1  
$EndComp
Text HLabel 8650 1500 2    60   Output ~ 0
Ext_Ref_Clk
$Comp
L C C46
U 1 1 59655025
P 6050 2025
F 0 "C46" H 6075 2125 50  0000 L CNN
F 1 "100n" H 6075 1925 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6088 1875 50  0001 C CNN
F 3 "" H 6050 2025 50  0001 C CNN
	1    6050 2025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0114
U 1 1 59655519
P 6050 2225
F 0 "#PWR0114" H 6050 1975 50  0001 C CNN
F 1 "GND" H 6050 2075 50  0000 C CNN
F 2 "" H 6050 2225 50  0001 C CNN
F 3 "" H 6050 2225 50  0001 C CNN
	1    6050 2225
	1    0    0    -1  
$EndComp
Text HLabel 6150 875  2    60   Input ~ 0
CHA_FILTA
Text HLabel 5950 875  0    60   Input ~ 0
CHA_FILTB
$Comp
L GND #PWR0115
U 1 1 59659874
P 8050 2075
F 0 "#PWR0115" H 8050 1825 50  0001 C CNN
F 1 "GND" H 8050 1925 50  0000 C CNN
F 2 "" H 8050 2075 50  0001 C CNN
F 3 "" H 8050 2075 50  0001 C CNN
	1    8050 2075
	1    0    0    -1  
$EndComp
$Comp
L WBC16-1T T1
U 1 1 5965D322
P 3375 1775
F 0 "T1" H 3375 2125 50  0000 C CNN
F 1 "WBC16-1T" H 3375 1525 50  0000 C CNN
F 2 "Footprints_LJ:wbc-16-1T" H 3375 1425 50  0001 C CIN
F 3 "" H 3375 1925 50  0001 C CNN
	1    3375 1775
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 596B57D3
P 4225 1800
F 0 "R32" V 4305 1800 50  0000 C CNN
F 1 "47R" V 4225 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4155 1800 50  0001 C CNN
F 3 "" H 4225 1800 50  0001 C CNN
	1    4225 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3575 1675 3725 1675
Wire Wire Line
	3575 1325 3825 1325
Wire Wire Line
	3575 1975 3825 1975
Wire Wire Line
	4125 1325 5225 1325
Wire Wire Line
	4125 1975 5225 1975
Connection ~ 4225 1325
Connection ~ 4225 1975
Wire Wire Line
	4525 1975 4525 1725
Wire Wire Line
	4900 1975 4900 1725
Connection ~ 4525 1975
Wire Wire Line
	4700 1325 4700 1650
Connection ~ 4700 1325
Connection ~ 4900 1975
Wire Notes Line
	925  2675 10950 2675
Wire Wire Line
	5525 1325 5800 1325
Wire Wire Line
	5800 1600 6325 1600
Wire Wire Line
	5800 1975 5525 1975
Wire Wire Line
	5800 1700 5800 1975
Wire Wire Line
	5800 1700 6325 1700
Wire Wire Line
	3050 1475 3175 1475
Wire Wire Line
	2050 1475 2750 1475
Wire Wire Line
	6500 3775 6600 3775
Wire Wire Line
	6600 3775 6600 3925
Wire Wire Line
	6600 3900 6500 3900
Wire Wire Line
	6500 3550 7550 3550
Wire Wire Line
	4950 3075 5650 3075
Wire Wire Line
	5650 3075 5650 3550
Wire Wire Line
	5650 3550 5700 3550
Wire Wire Line
	5600 4100 5600 4300
Wire Wire Line
	5600 4100 5700 4100
Wire Wire Line
	5700 3925 5375 3925
Wire Wire Line
	5375 3925 5375 3975
Wire Wire Line
	5700 3725 4550 3725
Wire Wire Line
	4250 3725 4250 3800
Wire Wire Line
	4250 4275 4250 4100
Wire Wire Line
	2350 3725 4250 3725
Wire Wire Line
	1900 1675 1900 1875
Wire Wire Line
	6325 2225 6325 2125
Wire Wire Line
	6325 1875 6325 1975
Wire Wire Line
	7925 1500 8650 1500
Wire Wire Line
	7925 1325 8050 1325
Wire Wire Line
	6500 4150 6800 4150
Wire Wire Line
	6800 4150 6800 4075
Wire Notes Line
	875  4600 11100 4600
Wire Wire Line
	6325 1275 6150 1275
Wire Wire Line
	6325 1375 5950 1375
Wire Wire Line
	6050 1875 6325 1875
Wire Wire Line
	6050 2175 6050 2225
Connection ~ 6050 1875
Connection ~ 6325 1875
Wire Wire Line
	6150 1275 6150 875 
Wire Wire Line
	5950 1375 5950 875 
Wire Wire Line
	7925 2075 8050 2075
Wire Wire Line
	8050 2075 8050 1325
Wire Wire Line
	4225 1350 4225 1325
Wire Wire Line
	4225 1950 4225 1975
Wire Wire Line
	3575 1975 3575 1875
Wire Wire Line
	3575 1325 3575 1475
Wire Wire Line
	5800 1325 5800 1600
$Comp
L GND #PWR0116
U 1 1 596B8167
P 3925 5625
F 0 "#PWR0116" H 3925 5375 50  0001 C CNN
F 1 "GND" H 3925 5475 50  0000 C CNN
F 2 "" H 3925 5625 50  0001 C CNN
F 3 "" H 3925 5625 50  0001 C CNN
	1    3925 5625
	1    0    0    -1  
$EndComp
$Comp
L R R35
U 1 1 596B816D
P 4175 5275
F 0 "R35" V 4255 5275 50  0000 C CNN
F 1 "100R" V 4175 5275 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4105 5275 50  0001 C CNN
F 3 "" H 4175 5275 50  0001 C CNN
	1    4175 5275
	0    1    1    0   
$EndComp
$Comp
L R R38
U 1 1 596B8173
P 4175 5925
F 0 "R38" V 4255 5925 50  0000 C CNN
F 1 "100R" V 4175 5925 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4105 5925 50  0001 C CNN
F 3 "" H 4175 5925 50  0001 C CNN
	1    4175 5925
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0117
U 1 1 596B8179
P 3375 5825
F 0 "#PWR0117" H 3375 5575 50  0001 C CNN
F 1 "GND" H 3375 5675 50  0000 C CNN
F 2 "" H 3375 5825 50  0001 C CNN
F 3 "" H 3375 5825 50  0001 C CNN
	1    3375 5825
	1    0    0    -1  
$EndComp
$Comp
L R R36
U 1 1 596B817F
P 4425 5450
F 0 "R36" V 4505 5450 50  0000 C CNN
F 1 "560R" V 4425 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4355 5450 50  0001 C CNN
F 3 "" H 4425 5450 50  0001 C CNN
	1    4425 5450
	1    0    0    -1  
$EndComp
$Comp
L HSMS-281C-TR1G V2
U 1 1 596B8185
P 5075 5625
F 0 "V2" H 4775 5675 60  0000 C CNN
F 1 "HSMS-281C-TR1G" H 4925 5350 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 4830 5550 60  0001 C CNN
F 3 "" H 4830 5550 60  0001 C CNN
	1    5075 5625
	1    0    0    -1  
$EndComp
$Comp
L C C50
U 1 1 596B818B
P 5575 5275
F 0 "C50" H 5600 5375 50  0000 L CNN
F 1 "100n" H 5600 5175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5613 5125 50  0001 C CNN
F 3 "" H 5575 5275 50  0001 C CNN
	1    5575 5275
	0    1    1    0   
$EndComp
$Comp
L C C52
U 1 1 596B8191
P 5575 5925
F 0 "C52" H 5600 6025 50  0000 L CNN
F 1 "100n" H 5600 5825 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5613 5775 50  0001 C CNN
F 3 "" H 5575 5925 50  0001 C CNN
	1    5575 5925
	0    1    1    0   
$EndComp
$Comp
L C C51
U 1 1 596B8197
P 3100 5425
F 0 "C51" H 3125 5525 50  0000 L CNN
F 1 "100n" H 3125 5325 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3138 5275 50  0001 C CNN
F 3 "" H 3100 5425 50  0001 C CNN
	1    3100 5425
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0118
U 1 1 596B819D
P 6525 6175
F 0 "#PWR0118" H 6525 5925 50  0001 C CNN
F 1 "GND" H 6525 6025 50  0000 C CNN
F 2 "" H 6525 6175 50  0001 C CNN
F 3 "" H 6525 6175 50  0001 C CNN
	1    6525 6175
	1    0    0    -1  
$EndComp
$Comp
L CONN_COAXIAL J4
U 1 1 596B81A3
P 2100 5425
F 0 "J4" H 2110 5545 50  0000 C CNN
F 1 "CONN_COAXIAL" V 2215 5425 50  0000 C CNN
F 2 "Footprints_LJ:bncf-horizontal" H 2100 5425 50  0001 C CNN
F 3 "" H 2100 5425 50  0001 C CNN
	1    2100 5425
	-1   0    0    -1  
$EndComp
Text Label 2325 5425 0    60   ~ 0
CH_B
$Comp
L GND #PWR0119
U 1 1 596B81AA
P 2100 5825
F 0 "#PWR0119" H 2100 5575 50  0001 C CNN
F 1 "GND" H 2100 5675 50  0000 C CNN
F 2 "" H 2100 5825 50  0001 C CNN
F 3 "" H 2100 5825 50  0001 C CNN
	1    2100 5825
	1    0    0    -1  
$EndComp
$Comp
L LTC6957-3 U11
U 1 1 596B81B0
P 7375 6300
F 0 "U11" H 6775 7700 60  0000 C CNN
F 1 "LTC6957-3" H 6975 7625 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-12-1EP_3x3mm_Pitch0.45mm" H 7375 6300 60  0001 C CNN
F 3 "" H 7375 6300 60  0001 C CNN
	1    7375 6300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0120
U 1 1 596B81B6
P 6250 5825
F 0 "#PWR0120" H 6250 5675 50  0001 C CNN
F 1 "+3.3V" H 6250 5965 50  0000 C CNN
F 2 "" H 6250 5825 50  0001 C CNN
F 3 "" H 6250 5825 50  0001 C CNN
	1    6250 5825
	1    0    0    -1  
$EndComp
NoConn ~ 8125 5850
Text HLabel 8850 5450 2    60   Output ~ 0
Clk_B
$Comp
L C C53
U 1 1 596B81BE
P 6250 5975
F 0 "C53" H 6275 6075 50  0000 L CNN
F 1 "100n" H 6275 5875 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6288 5825 50  0001 C CNN
F 3 "" H 6250 5975 50  0001 C CNN
	1    6250 5975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0121
U 1 1 596B81C4
P 6250 6175
F 0 "#PWR0121" H 6250 5925 50  0001 C CNN
F 1 "GND" H 6250 6025 50  0000 C CNN
F 2 "" H 6250 6175 50  0001 C CNN
F 3 "" H 6250 6175 50  0001 C CNN
	1    6250 6175
	1    0    0    -1  
$EndComp
Text HLabel 6350 4825 2    60   Input ~ 0
CHB_FILTA
Text HLabel 6150 4825 0    60   Input ~ 0
CHB_FILTB
$Comp
L GND #PWR0122
U 1 1 596B81CC
P 8250 6025
F 0 "#PWR0122" H 8250 5775 50  0001 C CNN
F 1 "GND" H 8250 5875 50  0000 C CNN
F 2 "" H 8250 6025 50  0001 C CNN
F 3 "" H 8250 6025 50  0001 C CNN
	1    8250 6025
	1    0    0    -1  
$EndComp
$Comp
L WBC16-1T T2
U 1 1 596B81D2
P 3575 5725
F 0 "T2" H 3575 6075 50  0000 C CNN
F 1 "WBC16-1T" H 3575 5475 50  0000 C CNN
F 2 "Footprints_LJ:wbc-16-1T" H 3575 5375 50  0001 C CIN
F 3 "" H 3575 5875 50  0001 C CNN
	1    3575 5725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 5625 3925 5625
Wire Wire Line
	3775 5275 4025 5275
Wire Wire Line
	3775 5925 4025 5925
Wire Wire Line
	4325 5275 5425 5275
Wire Wire Line
	4325 5925 5425 5925
Connection ~ 4425 5275
Connection ~ 4425 5925
Wire Wire Line
	4725 5925 4725 5675
Wire Wire Line
	5100 5925 5100 5675
Connection ~ 4725 5925
Wire Wire Line
	4900 5275 4900 5600
Connection ~ 4900 5275
Connection ~ 5100 5925
Wire Wire Line
	5725 5275 6000 5275
Wire Wire Line
	6000 5550 6525 5550
Wire Wire Line
	6000 5925 5725 5925
Wire Wire Line
	6000 5650 6000 5925
Wire Wire Line
	6000 5650 6525 5650
Wire Wire Line
	3250 5425 3375 5425
Wire Wire Line
	2250 5425 2950 5425
Wire Wire Line
	2100 5625 2100 5825
Wire Wire Line
	6525 6175 6525 6075
Wire Wire Line
	6525 5825 6525 5925
Wire Wire Line
	8125 5450 8850 5450
Wire Wire Line
	8125 5275 8250 5275
Wire Wire Line
	6525 5225 6350 5225
Wire Wire Line
	6525 5325 6150 5325
Wire Wire Line
	6250 5825 6525 5825
Wire Wire Line
	6250 6125 6250 6175
Connection ~ 6250 5825
Connection ~ 6525 5825
Wire Wire Line
	6350 5225 6350 4825
Wire Wire Line
	6150 5325 6150 4825
Wire Wire Line
	8125 6025 8250 6025
Wire Wire Line
	8250 6025 8250 5275
Wire Wire Line
	4425 5300 4425 5275
Wire Wire Line
	4425 5900 4425 5925
Wire Wire Line
	3775 5925 3775 5825
Wire Wire Line
	3775 5275 3775 5425
Wire Wire Line
	6000 5275 6000 5550
Wire Wire Line
	5375 4300 5375 4275
$Comp
L R R37
U 1 1 596B81D8
P 4425 5750
F 0 "R37" V 4505 5750 50  0000 C CNN
F 1 "47R" V 4425 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4355 5750 50  0001 C CNN
F 3 "" H 4425 5750 50  0001 C CNN
	1    4425 5750
	1    0    0    -1  
$EndComp
Connection ~ 4425 5600
Connection ~ 4225 1650
Text Label 3775 5275 0    60   ~ 0
T2+
Text Label 3775 5925 0    60   ~ 0
T2-
Text Label 4425 5275 0    60   ~ 0
CHB+
Text Label 4425 5925 0    60   ~ 0
CHB-
Text Label 3575 1325 0    60   ~ 0
T1+
Text Label 3575 1975 0    60   ~ 0
T1-
Text Label 4700 1325 0    60   ~ 0
V1+
Text Label 4900 1975 2    60   ~ 0
V1-
Text Label 5800 1600 0    60   ~ 0
IN+
Text Label 5800 1700 0    60   ~ 0
IN-
$Comp
L GND #PWR0123
U 1 1 596CACB7
P 7175 2500
F 0 "#PWR0123" H 7175 2250 50  0001 C CNN
F 1 "GND" H 7175 2350 50  0000 C CNN
F 2 "" H 7175 2500 50  0001 C CNN
F 3 "" H 7175 2500 50  0001 C CNN
	1    7175 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0124
U 1 1 596CAD1C
P 7375 6450
F 0 "#PWR0124" H 7375 6200 50  0001 C CNN
F 1 "GND" H 7375 6300 50  0000 C CNN
F 2 "" H 7375 6450 50  0001 C CNN
F 3 "" H 7375 6450 50  0001 C CNN
	1    7375 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3425 4950 3375
Connection ~ 6600 3900
$EndSCHEMATC
