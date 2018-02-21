EESchema Schematic File Version 4
LIBS:microman-mech-cache
EELAYER 26 0
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
L power:GND #PWR01
U 1 1 5A6BD8A3
P 3100 2500
F 0 "#PWR01" H 3100 2250 50  0001 C CNN
F 1 "GND" H 3105 2327 50  0000 C CNN
F 2 "" H 3100 2500 50  0001 C CNN
F 3 "" H 3100 2500 50  0001 C CNN
	1    3100 2500
	1    0    0    -1  
$EndComp
$Comp
L microman-mech-rescue:Conn_01x01-conn MK1
U 1 1 5A6BD93C
P 5000 2400
F 0 "MK1" H 5079 2442 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 2351 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 2400 50  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
	1    5000 2400
	1    0    0    -1  
$EndComp
$Comp
L microman-mech-rescue:Conn_01x01-conn MK2
U 1 1 5A6BD9D4
P 5000 2600
F 0 "MK2" H 5079 2642 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 2551 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 2600 50  0001 C CNN
F 3 "" H 5000 2600 50  0001 C CNN
	1    5000 2600
	1    0    0    -1  
$EndComp
$Comp
L microman-mech-rescue:Conn_01x01-conn MK3
U 1 1 5A6BD9F8
P 5000 2800
F 0 "MK3" H 5079 2842 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 2751 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 2800 50  0001 C CNN
F 3 "" H 5000 2800 50  0001 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
$Comp
L microman-mech-rescue:Conn_01x01-conn MK4
U 1 1 5A6BDA1E
P 5000 3000
F 0 "MK4" H 5079 3042 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 2951 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 3000 50  0001 C CNN
F 3 "" H 5000 3000 50  0001 C CNN
	1    5000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2500 3100 2400
Wire Wire Line
	4800 2400 4650 2400
Wire Wire Line
	4500 2400 4500 2600
Wire Wire Line
	4500 2600 4800 2600
Connection ~ 4500 2400
Wire Wire Line
	4500 2400 3100 2400
$Comp
L power:+3.3V #PWR02
U 1 1 5A6BE013
P 3950 3200
F 0 "#PWR02" H 3950 3050 50  0001 C CNN
F 1 "+3.3V" H 3965 3373 50  0000 C CNN
F 2 "" H 3950 3200 50  0001 C CNN
F 3 "" H 3950 3200 50  0001 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3200 4500 3200
Wire Wire Line
	4500 3200 4500 3000
Wire Wire Line
	4500 2800 4800 2800
Wire Wire Line
	4800 3000 4500 3000
Connection ~ 4500 3000
Wire Wire Line
	4500 3000 4500 2800
$Comp
L microman-mech-rescue:Conn_01x01-conn MK6
U 1 1 5A6BE12A
P 5000 2150
F 0 "MK6" H 5079 2192 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 2101 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 2150 50  0001 C CNN
F 3 "" H 5000 2150 50  0001 C CNN
	1    5000 2150
	1    0    0    -1  
$EndComp
$Comp
L microman-mech-rescue:Conn_01x01-conn MK5
U 1 1 5A6BE14E
P 5000 1900
F 0 "MK5" H 5079 1942 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 1851 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 1900 50  0001 C CNN
F 3 "" H 5000 1900 50  0001 C CNN
	1    5000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2400 4650 2150
Wire Wire Line
	4650 1900 4700 1900
Connection ~ 4650 2400
Wire Wire Line
	4650 2400 4500 2400
Wire Wire Line
	4800 2150 4650 2150
Connection ~ 4650 2150
Wire Wire Line
	4650 2150 4650 1900
$Comp
L microman-mech-rescue:Conn_01x01-conn MK7
U 1 1 5A6BE2F3
P 5000 1650
F 0 "MK7" H 5079 1692 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 1601 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 1650 50  0001 C CNN
F 3 "" H 5000 1650 50  0001 C CNN
	1    5000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1900 4700 1650
Wire Wire Line
	4700 1650 4800 1650
Connection ~ 4700 1900
Wire Wire Line
	4700 1900 4800 1900
$Comp
L microman-mech-rescue:Conn_01x01-conn MK9
U 1 1 5A6BE463
P 5000 1400
F 0 "MK9" H 5079 1442 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 1351 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 1400 50  0001 C CNN
F 3 "" H 5000 1400 50  0001 C CNN
	1    5000 1400
	1    0    0    -1  
$EndComp
$Comp
L microman-mech-rescue:Conn_01x01-conn MK8
U 1 1 5A6BE495
P 5000 1150
F 0 "MK8" H 5079 1192 50  0000 L CNN
F 1 "Mounting_Hole" H 5079 1101 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 5000 1150 50  0001 C CNN
F 3 "" H 5000 1150 50  0001 C CNN
	1    5000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1150 4700 1150
Wire Wire Line
	4700 1150 4700 1400
Connection ~ 4700 1650
Wire Wire Line
	4800 1400 4700 1400
Connection ~ 4700 1400
Wire Wire Line
	4700 1400 4700 1650
$Comp
L microman-mech-rescue:Conn_01x01-conn J1
U 1 1 5A6BF0C9
P 3150 -600
F 0 "J1" H 3230 -558 50  0000 L CNN
F 1 "Conn_01x01" H 3230 -649 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 3150 -600 50  0001 C CNN
F 3 "~" H 3150 -600 50  0001 C CNN
	1    3150 -600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5A6BF193
P 2550 -400
F 0 "#PWR03" H 2550 -650 50  0001 C CNN
F 1 "GND" H 2555 -573 50  0000 C CNN
F 2 "" H 2550 -400 50  0001 C CNN
F 3 "" H 2550 -400 50  0001 C CNN
	1    2550 -400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 -400 2550 -600
Wire Wire Line
	2550 -600 2950 -600
$EndSCHEMATC
