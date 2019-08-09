EESchema Schematic File Version 4
LIBS:controllerpro-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 5400 3700
Wire Wire Line
	5400 3800 5400 3700
Text GLabel 5400 3800 3    50   Input ~ 0
GNDA
Connection ~ 6700 2500
Text GLabel 6700 2500 2    50   Input ~ 0
VCCA
Text HLabel 5900 2700 0    50   Input ~ 0
LATCH_A
Text HLabel 5900 3500 0    50   Input ~ 0
FAST_DATA_A
Wire Wire Line
	6700 2500 6700 3300
Wire Wire Line
	6700 2000 6700 2500
Text HLabel 5900 2500 0    50   Input ~ 0
CLK_A
Wire Wire Line
	5900 3500 6100 3500
Wire Wire Line
	5400 3700 6100 3700
Wire Wire Line
	6700 3300 6100 3300
Wire Wire Line
	5900 2500 6100 2500
Wire Wire Line
	6700 2500 6500 2500
Wire Wire Line
	6100 2300 5550 2300
$Comp
L controllerpro-eagle-import:NINTENDO-MULTI_LARGE CP0
U 1 1 5D48E58B
P 6300 3100
F 0 "CP0" V 7300 2850 59  0000 C CNN
F 1 "NINTENDO-MULTI_LARGE" V 7200 3350 59  0000 C CNN
F 2 "controllerpro:NINTENDO-MULTI" H 6300 3100 50  0001 C CNN
F 3 "" H 6300 3100 50  0001 C CNN
	1    6300 3100
	0    1    1    0   
$EndComp
Text HLabel 4900 2300 0    50   Input ~ 0
SNES_NES_A
Text HLabel 4900 2000 0    50   Input ~ 0
VCC_A
Text HLabel 5900 2900 0    50   Input ~ 0
SLOW_DATA_A
Wire Wire Line
	5650 3050 5400 3050
Connection ~ 5400 3050
Wire Wire Line
	5900 2900 5950 2900
Wire Wire Line
	5950 3050 5950 2900
Connection ~ 5950 2900
Wire Wire Line
	5950 2900 6100 2900
Wire Wire Line
	5400 3050 5400 3700
Text HLabel 5400 3700 0    50   Input ~ 0
GND_A
$Comp
L Device:R R?
U 1 1 5D48A972
P 5800 3050
AR Path="/5D48A972" Ref="R?"  Part="1" 
AR Path="/5D46F38B/5D48A972" Ref="R2"  Part="1" 
F 0 "R2" V 5800 3000 50  0000 L CNN
F 1 "R" V 5870 3005 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5730 3050 50  0001 C CNN
F 3 "" H 5800 3050 50  0001 C CNN
	1    5800 3050
	0    1    1    0   
$EndComp
Connection ~ 6700 4950
Text GLabel 6700 4950 2    50   Input ~ 0
VCCA
Wire Wire Line
	6700 4950 6700 5750
Wire Wire Line
	6700 4450 6700 4950
Connection ~ 5400 2000
Wire Wire Line
	5400 2000 6700 2000
Connection ~ 5400 2300
Wire Wire Line
	5400 2000 4900 2000
$Comp
L Device:R R3
U 1 1 5D5732A1
P 5250 2300
F 0 "R3" V 5250 2300 50  0000 C CNN
F 1 "R" V 5134 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 2300 50  0001 C CNN
F 3 "~" H 5250 2300 50  0001 C CNN
	1    5250 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2300 4900 2300
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5D48A955
P 5400 2450
AR Path="/5D48A955" Ref="JP?"  Part="1" 
AR Path="/5D46F38B/5D48A955" Ref="JP5"  Part="1" 
F 0 "JP5" V 5354 2518 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 5445 2518 50  0001 L CNN
F 2 "t32_ref:SOLDERJUMPER" H 5400 2450 50  0001 C CNN
F 3 "~" H 5400 2450 50  0001 C CNN
	1    5400 2450
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5D48A961
P 5400 2150
AR Path="/5D48A961" Ref="JP?"  Part="1" 
AR Path="/5D46F38B/5D48A961" Ref="JP4"  Part="1" 
F 0 "JP4" V 5354 2218 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 5445 2218 50  0001 L CNN
F 2 "t32_ref:SOLDERJUMPER" H 5400 2150 50  0001 C CNN
F 3 "~" H 5400 2150 50  0001 C CNN
	1    5400 2150
	0    1    1    0   
$EndComp
Text HLabel 5550 2250 2    50   Input ~ 0
DETECT_A
Wire Wire Line
	5550 2250 5550 2300
Connection ~ 5550 2300
Wire Wire Line
	5550 2300 5400 2300
Wire Wire Line
	5400 2600 5400 3050
Wire Wire Line
	5900 2700 6100 2700
Wire Wire Line
	6700 4950 6500 4950
Wire Wire Line
	6100 4750 5550 4750
Wire Wire Line
	5900 4950 6100 4950
Wire Wire Line
	5900 5150 6100 5150
Wire Wire Line
	5950 5350 6100 5350
Wire Wire Line
	5900 5950 6100 5950
Wire Wire Line
	5400 6150 6100 6150
Wire Wire Line
	5400 5050 5400 5500
Wire Wire Line
	5550 4750 5400 4750
Connection ~ 5550 4750
Wire Wire Line
	5550 4700 5550 4750
Text HLabel 5550 4700 2    50   Input ~ 0
DETECT_B
$Comp
L Device:R R6
U 1 1 5D575E2D
P 5250 4750
F 0 "R6" V 5250 4750 50  0000 C CNN
F 1 "R" V 5134 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 4750 50  0001 C CNN
F 3 "~" H 5250 4750 50  0001 C CNN
	1    5250 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D52D94F
P 5800 5500
AR Path="/5D52D94F" Ref="R?"  Part="1" 
AR Path="/5D46F38B/5D52D94F" Ref="R5"  Part="1" 
F 0 "R5" V 5800 5450 50  0000 L CNN
F 1 "R" V 5870 5455 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5730 5500 50  0001 C CNN
F 3 "" H 5800 5500 50  0001 C CNN
	1    5800 5500
	0    1    1    0   
$EndComp
Text HLabel 5400 6150 0    50   Input ~ 0
GND_B
Wire Wire Line
	5400 5500 5400 6150
Connection ~ 5950 5350
Wire Wire Line
	5950 5500 5950 5350
Wire Wire Line
	5900 5350 5950 5350
Connection ~ 5400 5500
Wire Wire Line
	5650 5500 5400 5500
Text HLabel 5900 5350 0    50   Input ~ 0
SLOW_DATA_B
Connection ~ 5400 4450
Wire Wire Line
	5400 4450 4900 4450
Text HLabel 4900 4450 0    50   Input ~ 0
VCC_B
Wire Wire Line
	5100 4750 4900 4750
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5D52D936
P 5400 4900
AR Path="/5D52D936" Ref="JP?"  Part="1" 
AR Path="/5D46F38B/5D52D936" Ref="JP7"  Part="1" 
F 0 "JP7" V 5354 4968 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 5445 4968 50  0001 L CNN
F 2 "t32_ref:SOLDERJUMPER" H 5400 4900 50  0001 C CNN
F 3 "~" H 5400 4900 50  0001 C CNN
	1    5400 4900
	0    1    1    0   
$EndComp
Text HLabel 4900 4750 0    50   Input ~ 0
SNES_NES_B
Text HLabel 5900 4950 0    50   Input ~ 0
CLK_B
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 5D52D91A
P 5400 4600
AR Path="/5D52D91A" Ref="JP?"  Part="1" 
AR Path="/5D46F38B/5D52D91A" Ref="JP6"  Part="1" 
F 0 "JP6" V 5354 4668 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 5445 4668 50  0001 L CNN
F 2 "t32_ref:SOLDERJUMPER" H 5400 4600 50  0001 C CNN
F 3 "~" H 5400 4600 50  0001 C CNN
	1    5400 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 4450 6700 4450
Connection ~ 5400 4750
Text HLabel 5900 5950 0    50   Input ~ 0
FAST_DATA_B
Text HLabel 5900 5150 0    50   Input ~ 0
LATCH_B
Text GLabel 5400 6250 3    50   Input ~ 0
GNDA
Wire Wire Line
	5400 6250 5400 6150
Connection ~ 5400 6150
Wire Wire Line
	6700 5750 6100 5750
$Comp
L controllerpro-eagle-import:NINTENDO-MULTI_LARGE CP1
U 1 1 5D52D928
P 6300 5550
F 0 "CP1" V 7300 5300 59  0000 C CNN
F 1 "NINTENDO-MULTI_LARGE" V 7200 5800 59  0000 C CNN
F 2 "controllerpro:NINTENDO-MULTI" H 6300 5550 50  0001 C CNN
F 3 "" H 6300 5550 50  0001 C CNN
	1    6300 5550
	0    1    1    0   
$EndComp
$EndSCHEMATC
