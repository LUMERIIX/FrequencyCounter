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
L GND #PWR0102
U 1 1 595E1304
P 3725 1675
F 0 "#PWR0102" H 3725 1425 50  0001 C CNN
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
L GND #PWR0103
U 1 1 595E15F9
P 3175 1875
F 0 "#PWR0103" H 3175 1625 50  0001 C CNN
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
P 5500 3150
F 0 "U10" H 5175 3025 60  0000 C CNN
F 1 "MC12093" H 5325 2950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5175 3025 60  0001 C CNN
F 3 "" H 5175 3025 60  0001 C CNN
	1    5500 3150
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
L GND #PWR0104
U 1 1 595E4D57
P 6325 2225
F 0 "#PWR0104" H 6325 1975 50  0001 C CNN
F 1 "GND" H 6325 2075 50  0000 C CNN
F 2 "" H 6325 2225 50  0001 C CNN
F 3 "" H 6325 2225 50  0001 C CNN
	1    6325 2225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0105
U 1 1 595E55DF
P 5975 3925
F 0 "#PWR0105" H 5975 3675 50  0001 C CNN
F 1 "GND" H 5975 3775 50  0000 C CNN
F 2 "" H 5975 3925 50  0001 C CNN
F 3 "" H 5975 3925 50  0001 C CNN
	1    5975 3925
	1    0    0    -1  
$EndComp
$Comp
L C C47
U 1 1 595E5982
P 4325 3225
F 0 "C47" H 4350 3325 50  0000 L CNN
F 1 "100n" H 4350 3125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4363 3075 50  0001 C CNN
F 3 "" H 4325 3225 50  0001 C CNN
	1    4325 3225
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0106
U 1 1 595E5A7F
P 4325 3075
F 0 "#PWR0106" H 4325 2925 50  0001 C CNN
F 1 "+3.3V" H 4325 3215 50  0000 C CNN
F 2 "" H 4325 3075 50  0001 C CNN
F 3 "" H 4325 3075 50  0001 C CNN
	1    4325 3075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0107
U 1 1 595E5BA0
P 4325 3425
F 0 "#PWR0107" H 4325 3175 50  0001 C CNN
F 1 "GND" H 4325 3275 50  0000 C CNN
F 2 "" H 4325 3425 50  0001 C CNN
F 3 "" H 4325 3425 50  0001 C CNN
	1    4325 3425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0108
U 1 1 595E5D32
P 4975 4300
F 0 "#PWR0108" H 4975 4050 50  0001 C CNN
F 1 "GND" H 4975 4150 50  0000 C CNN
F 2 "" H 4975 4300 50  0001 C CNN
F 3 "" H 4975 4300 50  0001 C CNN
	1    4975 4300
	1    0    0    -1  
$EndComp
$Comp
L C C49
U 1 1 595E6100
P 4750 4125
F 0 "C49" H 4775 4225 50  0000 L CNN
F 1 "1n" H 4775 4025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4788 3975 50  0001 C CNN
F 3 "" H 4750 4125 50  0001 C CNN
	1    4750 4125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0109
U 1 1 595E6248
P 4750 4300
F 0 "#PWR0109" H 4750 4050 50  0001 C CNN
F 1 "GND" H 4750 4150 50  0000 C CNN
F 2 "" H 4750 4300 50  0001 C CNN
F 3 "" H 4750 4300 50  0001 C CNN
	1    4750 4300
	1    0    0    -1  
$EndComp
$Comp
L C C48
U 1 1 595E640D
P 3775 3725
F 0 "C48" H 3800 3825 50  0000 L CNN
F 1 "1n" H 3800 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3813 3575 50  0001 C CNN
F 3 "" H 3775 3725 50  0001 C CNN
	1    3775 3725
	0    1    1    0   
$EndComp
$Comp
L R R34
U 1 1 595E646F
P 3625 3950
F 0 "R34" V 3705 3950 50  0000 C CNN
F 1 "50R" V 3625 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3555 3950 50  0001 C CNN
F 3 "" H 3625 3950 50  0001 C CNN
	1    3625 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0110
U 1 1 595E6503
P 3625 4275
F 0 "#PWR0110" H 3625 4025 50  0001 C CNN
F 1 "GND" H 3625 4125 50  0000 C CNN
F 2 "" H 3625 4275 50  0001 C CNN
F 3 "" H 3625 4275 50  0001 C CNN
	1    3625 4275
	1    0    0    -1  
$EndComp
$Comp
L CONN_COAXIAL J3
U 1 1 595E750B
P 1575 3725
F 0 "J3" H 1585 3845 50  0000 C CNN
F 1 "CONN_COAXIAL" V 1690 3725 50  0000 C CNN
F 2 "Footprints_LJ:bncf-horizontal" H 1575 3725 50  0001 C CNN
F 3 "" H 1575 3725 50  0001 C CNN
	1    1575 3725
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0111
U 1 1 595E7846
P 1575 3925
F 0 "#PWR0111" H 1575 3675 50  0001 C CNN
F 1 "GND" H 1575 3775 50  0000 C CNN
F 2 "" H 1575 3925 50  0001 C CNN
F 3 "" H 1575 3925 50  0001 C CNN
	1    1575 3925
	1    0    0    -1  
$EndComp
Text Label 1800 3725 0    60   ~ 0
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
L GND #PWR0112
U 1 1 595E865F
P 1900 1875
F 0 "#PWR0112" H 1900 1625 50  0001 C CNN
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
L +3.3V #PWR0113
U 1 1 595E9F37
P 6050 1875
F 0 "#PWR0113" H 6050 1725 50  0001 C CNN
F 1 "+3.3V" H 6050 2015 50  0000 C CNN
F 2 "" H 6050 1875 50  0001 C CNN
F 3 "" H 6050 1875 50  0001 C CNN
	1    6050 1875
	1    0    0    -1  
$EndComp
NoConn ~ 7925 1900
Text HLabel 7875 3550 2    60   Output ~ 0
Clk_A
$Comp
L +3.3V #PWR0114
U 1 1 595EC3C2
P 6175 4075
F 0 "#PWR0114" H 6175 3925 50  0001 C CNN
F 1 "+3.3V" H 6175 4215 50  0000 C CNN
F 2 "" H 6175 4075 50  0001 C CNN
F 3 "" H 6175 4075 50  0001 C CNN
	1    6175 4075
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
L GND #PWR0115
U 1 1 59655519
P 6050 2225
F 0 "#PWR0115" H 6050 1975 50  0001 C CNN
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
L GND #PWR0116
U 1 1 59659874
P 8050 2075
F 0 "#PWR0116" H 8050 1825 50  0001 C CNN
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
	5875 3775 5975 3775
Wire Wire Line
	5975 3775 5975 3925
Wire Wire Line
	5975 3900 5875 3900
Wire Wire Line
	4325 3075 5025 3075
Wire Wire Line
	5025 3075 5025 3550
Wire Wire Line
	5025 3550 5075 3550
Wire Wire Line
	4975 4100 4975 4300
Wire Wire Line
	4975 4100 5075 4100
Wire Wire Line
	5075 3925 4750 3925
Wire Wire Line
	4750 3925 4750 3975
Wire Wire Line
	5075 3725 3925 3725
Wire Wire Line
	3625 3725 3625 3800
Wire Wire Line
	3625 4275 3625 4100
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
	5875 4150 6175 4150
Wire Wire Line
	6175 4150 6175 4075
Wire Notes Line
	850  4875 11075 4875
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
Wire Wire Line
	4750 4300 4750 4275
Connection ~ 4225 1650
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
L GND #PWR0117
U 1 1 596CACB7
P 7175 2500
F 0 "#PWR0117" H 7175 2250 50  0001 C CNN
F 1 "GND" H 7175 2350 50  0000 C CNN
F 2 "" H 7175 2500 50  0001 C CNN
F 3 "" H 7175 2500 50  0001 C CNN
	1    7175 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 3425 4325 3375
Connection ~ 5975 3900
$Comp
L GND #PWR0118
U 1 1 59C3FC42
P 2400 4175
F 0 "#PWR0118" H 2400 3925 50  0001 C CNN
F 1 "GND" H 2400 4025 50  0000 C CNN
F 2 "" H 2400 4175 50  0001 C CNN
F 3 "" H 2400 4175 50  0001 C CNN
	1    2400 4175
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 59DBE8E1
P 7275 3775
F 0 "R22" V 7355 3775 50  0000 C CNN
F 1 "680R" V 7275 3775 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7205 3775 50  0001 C CNN
F 3 "" H 7275 3775 50  0001 C CNN
	1    7275 3775
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 59DBE98D
P 7275 3325
F 0 "R17" V 7355 3325 50  0000 C CNN
F 1 "680R" V 7275 3325 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7205 3325 50  0001 C CNN
F 3 "" H 7275 3325 50  0001 C CNN
	1    7275 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 3475 7275 3625
Connection ~ 7275 3550
$Comp
L GND #PWR0119
U 1 1 59DBEE23
P 7275 3925
F 0 "#PWR0119" H 7275 3675 50  0001 C CNN
F 1 "GND" H 7275 3775 50  0000 C CNN
F 2 "" H 7275 3925 50  0001 C CNN
F 3 "" H 7275 3925 50  0001 C CNN
	1    7275 3925
	1    0    0    -1  
$EndComp
$Comp
L +1.2V #PWR0120
U 1 1 59DBFDA3
P 7275 3175
F 0 "#PWR0120" H 7275 3315 20  0001 C CNN
F 1 "+1.2V" H 7275 3285 30  0000 C CNN
F 2 "" H 7275 3175 60  0000 C CNN
F 3 "" H 7275 3175 60  0000 C CNN
	1    7275 3175
	1    0    0    -1  
$EndComp
$Comp
L C C51
U 1 1 59DC0273
P 6800 3550
F 0 "C51" H 6825 3650 50  0000 L CNN
F 1 "100p" H 6825 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6838 3400 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3550 7875 3550
Wire Wire Line
	6650 3550 5875 3550
$Comp
L CONN_COAXIAL J4
U 1 1 59DC213C
P 1575 5450
F 0 "J4" H 1585 5570 50  0000 C CNN
F 1 "CONN_COAXIAL" V 1690 5450 50  0000 C CNN
F 2 "Footprints_LJ:bncf-horizontal" H 1575 5450 50  0001 C CNN
F 3 "" H 1575 5450 50  0001 C CNN
	1    1575 5450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0121
U 1 1 59DC2142
P 1575 5650
F 0 "#PWR0121" H 1575 5400 50  0001 C CNN
F 1 "GND" H 1575 5500 50  0000 C CNN
F 2 "" H 1575 5650 50  0001 C CNN
F 3 "" H 1575 5650 50  0001 C CNN
	1    1575 5650
	1    0    0    -1  
$EndComp
$Comp
L ADR5040 U13
U 1 1 59DC2DBA
P 5725 6450
F 0 "U13" H 5675 6675 60  0000 C CNN
F 1 "ADR5040" H 5900 6200 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 5825 5975 60  0001 C CNN
F 3 "" H 5825 5975 60  0001 C CNN
	1    5725 6450
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 59DC37DD
P 5200 6150
F 0 "R23" V 5280 6150 50  0000 C CNN
F 1 "1k" V 5200 6150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5130 6150 50  0001 C CNN
F 3 "" H 5200 6150 50  0001 C CNN
	1    5200 6150
	1    0    0    1   
$EndComp
$Comp
L +3.3V #PWR0122
U 1 1 59DC38DE
P 4900 5975
F 0 "#PWR0122" H 4900 5825 50  0001 C CNN
F 1 "+3.3V" H 4900 6115 50  0000 C CNN
F 2 "" H 4900 5975 50  0001 C CNN
F 3 "" H 4900 5975 50  0001 C CNN
	1    4900 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6350 5425 6350
$Comp
L R R35
U 1 1 59DC3F63
P 5200 6550
F 0 "R35" V 5280 6550 50  0000 C CNN
F 1 "100k" V 5200 6550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5130 6550 50  0001 C CNN
F 3 "" H 5200 6550 50  0001 C CNN
	1    5200 6550
	1    0    0    -1  
$EndComp
$Comp
L R R36
U 1 1 59DC4010
P 5200 6925
F 0 "R36" V 5280 6925 50  0000 C CNN
F 1 "1k" V 5200 6925 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5130 6925 50  0001 C CNN
F 3 "" H 5200 6925 50  0001 C CNN
	1    5200 6925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6775 5200 6700
Connection ~ 5200 6350
$Comp
L GND #PWR0123
U 1 1 59DC418D
P 5200 7075
F 0 "#PWR0123" H 5200 6825 50  0001 C CNN
F 1 "GND" H 5200 6925 50  0000 C CNN
F 2 "" H 5200 7075 50  0001 C CNN
F 3 "" H 5200 7075 50  0001 C CNN
	1    5200 7075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0124
U 1 1 59DC41EF
P 5425 6550
F 0 "#PWR0124" H 5425 6300 50  0001 C CNN
F 1 "GND" H 5425 6400 50  0000 C CNN
F 2 "" H 5425 6550 50  0001 C CNN
F 3 "" H 5425 6550 50  0001 C CNN
	1    5425 6550
	1    0    0    -1  
$EndComp
$Comp
L TLV3501 U12
U 1 1 59DC6E04
P 3500 5600
F 0 "U12" H 3525 5075 60  0000 C CNN
F 1 "TLV3501" H 3625 4900 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 3500 5300 60  0001 C CNN
F 3 "" H 3500 5300 60  0001 C CNN
	1    3500 5600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0125
U 1 1 59DC70AC
P 3800 5200
F 0 "#PWR0125" H 3800 5050 50  0001 C CNN
F 1 "+3.3V" H 3800 5340 50  0000 C CNN
F 2 "" H 3800 5200 50  0001 C CNN
F 3 "" H 3800 5200 50  0001 C CNN
	1    3800 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0126
U 1 1 59DC70FA
P 3800 6000
F 0 "#PWR0126" H 3800 5750 50  0001 C CNN
F 1 "GND" H 3800 5850 50  0000 C CNN
F 2 "" H 3800 6000 50  0001 C CNN
F 3 "" H 3800 6000 50  0001 C CNN
	1    3800 6000
	1    0    0    -1  
$EndComp
NoConn ~ 3725 6075
Wire Wire Line
	3300 5800 3100 5800
Wire Wire Line
	3100 5800 3100 6750
Wire Wire Line
	3100 6750 5200 6750
Connection ~ 5200 6750
Wire Wire Line
	4300 5600 5275 5600
Text HLabel 5275 5600 2    60   Output ~ 0
Clk_B
NoConn ~ 6350 6450
$Comp
L BAV99 D3
U 1 1 59DCD7C6
P 2400 4100
F 0 "D3" H 2400 4200 50  0000 C CNN
F 1 "BAV99" H 2400 4000 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2400 3950 50  0001 C CNN
F 3 "" H 2400 4200 50  0001 C CNN
	1    2400 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0127
U 1 1 59DD57B6
P 2375 5900
F 0 "#PWR0127" H 2375 5650 50  0001 C CNN
F 1 "GND" H 2375 5750 50  0000 C CNN
F 2 "" H 2375 5900 50  0001 C CNN
F 3 "" H 2375 5900 50  0001 C CNN
	1    2375 5900
	1    0    0    -1  
$EndComp
$Comp
L BAV99 D4
U 1 1 59DD52AC
P 2375 5825
F 0 "D4" H 2375 5925 50  0000 C CNN
F 1 "BAV99" H 2375 5725 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2375 5675 50  0001 C CNN
F 3 "" H 2375 5925 50  0001 C CNN
	1    2375 5825
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 5450 3300 5450
Connection ~ 2225 5450
Connection ~ 2525 5450
Wire Wire Line
	1725 3725 3625 3725
Connection ~ 2250 3725
Connection ~ 2550 3725
Text Label 1800 5450 0    60   ~ 0
CH_B
Wire Wire Line
	5200 6400 5200 6300
Wire Wire Line
	5200 5975 5200 6000
$Comp
L C C50
U 1 1 59DE4E0E
P 4900 6125
F 0 "C50" H 4925 6225 50  0000 L CNN
F 1 "100n" H 4925 6025 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4938 5975 50  0001 C CNN
F 3 "" H 4900 6125 50  0001 C CNN
	1    4900 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5975 5200 5975
$Comp
L GND #PWR0128
U 1 1 59DE4F7D
P 4900 6275
F 0 "#PWR0128" H 4900 6025 50  0001 C CNN
F 1 "GND" H 4900 6125 50  0000 C CNN
F 2 "" H 4900 6275 50  0001 C CNN
F 3 "" H 4900 6275 50  0001 C CNN
	1    4900 6275
	1    0    0    -1  
$EndComp
$EndSCHEMATC
