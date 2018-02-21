EESchema Schematic File Version 4
LIBS:microman-kit-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Micromanipulation"
Date "2018-02-20"
Rev "r1"
Comp "allesblinkt"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L microman-kit:StepStickDRV8825 U3
U 1 1 5AA260D6
P 4600 3100
AR Path="/570E376A/5AA260D6" Ref="U3"  Part="1" 
AR Path="/5A6EF158/5AA260D6" Ref="U6"  Part="1" 
F 0 "U6" H 4600 3823 60  0000 C CNN
F 1 "StepperDriver" H 4600 3727 47  0000 C CNN
F 2 "microman-kit:SilentStepStick" H 4600 3630 60  0001 C CNN
F 3 "" H 4600 2700 60  0000 C CNN
	1    4600 3100
	-1   0    0    1   
$EndComp
$Comp
L device:CP1_Small C12
U 1 1 570D28CE
P 8700 5550
AR Path="/570E376A/570D28CE" Ref="C12"  Part="1" 
AR Path="/5A6EF158/570D28CE" Ref="C23"  Part="1" 
F 0 "C23" H 8791 5596 50  0000 L CNN
F 1 "10u" H 8791 5504 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8700 5550 4   0000 C CNN
F 3 "" H 8700 5550 50  0000 C CNN
	1    8700 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5AA260D8
P 6000 2900
AR Path="/570E376A/5AA260D8" Ref="#PWR045"  Part="1" 
AR Path="/5A6EF158/5AA260D8" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 6000 2650 50  0001 C CNN
F 1 "GND" V 6008 2772 50  0000 R CNN
F 2 "" H 6000 2900 50  0000 C CNN
F 3 "" H 6000 2900 50  0000 C CNN
	1    6000 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 2750 6000 2750
$Comp
L power:GND #PWR047
U 1 1 5AA260D9
P 5200 3550
AR Path="/570E376A/5AA260D9" Ref="#PWR047"  Part="1" 
AR Path="/5A6EF158/5AA260D9" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 5200 3300 50  0001 C CNN
F 1 "GND" H 5208 3376 50  0000 C CNN
F 2 "" H 5200 3550 50  0000 C CNN
F 3 "" H 5200 3550 50  0000 C CNN
	1    5200 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 3450 5200 3450
Wire Wire Line
	8700 5400 8700 5450
$Comp
L power:GND #PWR056
U 1 1 5AA260DA
P 8700 5700
AR Path="/570E376A/5AA260DA" Ref="#PWR056"  Part="1" 
AR Path="/5A6EF158/5AA260DA" Ref="#PWR096"  Part="1" 
F 0 "#PWR096" H 8700 5450 50  0001 C CNN
F 1 "GND" H 8708 5526 50  0000 C CNN
F 2 "" H 8700 5700 50  0000 C CNN
F 3 "" H 8700 5700 50  0000 C CNN
	1    8700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5650 8700 5700
$Comp
L device:D_Schottky_Small D10
U 1 1 5AA260DB
P 5900 5700
AR Path="/570E376A/5AA260DB" Ref="D10"  Part="1" 
AR Path="/5A6EF158/5AA260DB" Ref="D18"  Part="1" 
F 0 "D18" V 5846 5768 50  0000 L CNN
F 1 "Schot" V 5938 5768 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 5992 5768 4   0000 L CNN
F 3 "" V 5900 5700 50  0000 C CNN
	1    5900 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 5500 5900 5550
$Comp
L device:D_Schottky_Small D6
U 1 1 5AA260DC
P 5900 5400
AR Path="/570E376A/5AA260DC" Ref="D6"  Part="1" 
AR Path="/5A6EF158/5AA260DC" Ref="D14"  Part="1" 
F 0 "D14" V 5846 5468 50  0000 L CNN
F 1 "Schot" V 5938 5468 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 5992 5468 10  0000 L CNN
F 3 "" V 5900 5400 50  0000 C CNN
	1    5900 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR060
U 1 1 570D28D7
P 5900 5850
AR Path="/570E376A/570D28D7" Ref="#PWR060"  Part="1" 
AR Path="/5A6EF158/570D28D7" Ref="#PWR0100"  Part="1" 
F 0 "#PWR0100" H 5900 5600 50  0001 C CNN
F 1 "GND" H 5908 5676 50  0000 C CNN
F 2 "" H 5900 5850 50  0000 C CNN
F 3 "" H 5900 5850 50  0000 C CNN
	1    5900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5800 5900 5850
Wire Wire Line
	5900 5250 5900 5300
Wire Wire Line
	5100 3250 5500 3250
Wire Wire Line
	5500 3150 5100 3150
Wire Wire Line
	5100 3050 5500 3050
Wire Wire Line
	5100 2950 5500 2950
Text Label 5800 5550 2    47   ~ 0
M1_M1B
Wire Wire Line
	5200 3450 5200 3550
Wire Wire Line
	6000 2750 6000 2650
Wire Wire Line
	5900 5550 5800 5550
Connection ~ 5900 5550
$Comp
L device:D_Schottky_Small D11
U 1 1 570D28DA
P 6600 5700
AR Path="/570E376A/570D28DA" Ref="D11"  Part="1" 
AR Path="/5A6EF158/570D28DA" Ref="D19"  Part="1" 
F 0 "D19" V 6546 5768 50  0000 L CNN
F 1 "Schot" V 6638 5768 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 6692 5768 4   0000 L CNN
F 3 "" V 6600 5700 50  0000 C CNN
	1    6600 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 5500 6600 5550
$Comp
L device:D_Schottky_Small D7
U 1 1 570D28DB
P 6600 5400
AR Path="/570E376A/570D28DB" Ref="D7"  Part="1" 
AR Path="/5A6EF158/570D28DB" Ref="D15"  Part="1" 
F 0 "D15" V 6546 5468 50  0000 L CNN
F 1 "Schot" V 6638 5468 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 6692 5468 4   0000 L CNN
F 3 "" V 6600 5400 50  0000 C CNN
	1    6600 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR061
U 1 1 570D28DC
P 6600 5850
AR Path="/570E376A/570D28DC" Ref="#PWR061"  Part="1" 
AR Path="/5A6EF158/570D28DC" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6600 5600 50  0001 C CNN
F 1 "GND" H 6608 5676 50  0000 C CNN
F 2 "" H 6600 5850 50  0000 C CNN
F 3 "" H 6600 5850 50  0000 C CNN
	1    6600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5800 6600 5850
Wire Wire Line
	6600 5250 6600 5300
Text Label 6450 5550 2    47   ~ 0
M1_M1A
Wire Wire Line
	6600 5550 6450 5550
Connection ~ 6600 5550
$Comp
L device:D_Schottky_Small D12
U 1 1 570D28DE
P 7250 5700
AR Path="/570E376A/570D28DE" Ref="D12"  Part="1" 
AR Path="/5A6EF158/570D28DE" Ref="D20"  Part="1" 
F 0 "D20" V 7196 5768 50  0000 L CNN
F 1 "Schot" V 7288 5768 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 7342 5768 4   0000 L CNN
F 3 "" V 7250 5700 50  0000 C CNN
	1    7250 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 5500 7250 5550
$Comp
L device:D_Schottky_Small D8
U 1 1 570D28DF
P 7250 5400
AR Path="/570E376A/570D28DF" Ref="D8"  Part="1" 
AR Path="/5A6EF158/570D28DF" Ref="D16"  Part="1" 
F 0 "D16" V 7196 5468 50  0000 L CNN
F 1 "Schot" V 7288 5468 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 7342 5468 4   0000 L CNN
F 3 "" V 7250 5400 50  0000 C CNN
	1    7250 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR062
U 1 1 570D28E0
P 7250 5850
AR Path="/570E376A/570D28E0" Ref="#PWR062"  Part="1" 
AR Path="/5A6EF158/570D28E0" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 7250 5600 50  0001 C CNN
F 1 "GND" H 7258 5676 50  0000 C CNN
F 2 "" H 7250 5850 50  0000 C CNN
F 3 "" H 7250 5850 50  0000 C CNN
	1    7250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5800 7250 5850
Wire Wire Line
	7250 5250 7250 5300
Text Label 7200 5550 2    47   ~ 0
M1_M2A
Wire Wire Line
	7250 5550 7200 5550
Connection ~ 7250 5550
$Comp
L device:D_Schottky_Small D13
U 1 1 570D28E2
P 7950 5700
AR Path="/570E376A/570D28E2" Ref="D13"  Part="1" 
AR Path="/5A6EF158/570D28E2" Ref="D21"  Part="1" 
F 0 "D21" V 7896 5768 50  0000 L CNN
F 1 "Schot" V 7988 5768 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 8042 5768 4   0000 L CNN
F 3 "" V 7950 5700 50  0000 C CNN
	1    7950 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 5500 7950 5550
$Comp
L device:D_Schottky_Small D9
U 1 1 570D28E3
P 7950 5400
AR Path="/570E376A/570D28E3" Ref="D9"  Part="1" 
AR Path="/5A6EF158/570D28E3" Ref="D17"  Part="1" 
F 0 "D17" V 7896 5468 50  0000 L CNN
F 1 "Schot" V 7988 5468 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" V 8042 5468 4   0000 L CNN
F 3 "" V 7950 5400 50  0000 C CNN
	1    7950 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR063
U 1 1 570D28E4
P 7950 5850
AR Path="/570E376A/570D28E4" Ref="#PWR063"  Part="1" 
AR Path="/5A6EF158/570D28E4" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 7950 5600 50  0001 C CNN
F 1 "GND" H 7958 5676 50  0000 C CNN
F 2 "" H 7950 5850 50  0000 C CNN
F 3 "" H 7950 5850 50  0000 C CNN
	1    7950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5800 7950 5850
Wire Wire Line
	7950 5250 7950 5300
Text Label 7850 5550 2    47   ~ 0
M1_M2B
Wire Wire Line
	7950 5550 7850 5550
Connection ~ 7950 5550
$Comp
L power:GND #PWR057
U 1 1 5AA260E7
P 3150 5850
AR Path="/570E376A/5AA260E7" Ref="#PWR057"  Part="1" 
AR Path="/5A6EF158/5AA260E7" Ref="#PWR097"  Part="1" 
F 0 "#PWR097" H 3150 5600 50  0001 C CNN
F 1 "GND" H 3158 5676 50  0000 C CNN
F 2 "" H 3150 5850 50  0000 C CNN
F 3 "" H 3150 5850 50  0000 C CNN
	1    3150 5850
	-1   0    0    -1  
$EndComp
Text Label 3500 5500 0    47   ~ 0
CFG1
Text Label 4000 3050 2    47   ~ 0
CFG3
Wire Wire Line
	4000 3050 4100 3050
Text Label 4000 2950 2    47   ~ 0
CFG2
Wire Wire Line
	4000 2950 4100 2950
Text Label 4000 2850 2    47   ~ 0
CFG1
Wire Wire Line
	4000 2850 4100 2850
Text HLabel 3750 3350 0    47   Input ~ 0
STEP
Wire Wire Line
	3750 3350 4100 3350
Text HLabel 3750 3450 0    47   Input ~ 0
DIR
Wire Wire Line
	3750 3450 4100 3450
Text HLabel 3750 2750 0    47   Input ~ 0
~EN
Wire Wire Line
	3750 2750 4100 2750
Text HLabel 5500 2950 2    47   Output ~ 0
M_2B
Text HLabel 5500 3050 2    47   Output ~ 0
M_2A
Text HLabel 5500 3150 2    47   Output ~ 0
M_1A
Text HLabel 5500 3250 2    47   Output ~ 0
M_1B
$Comp
L device:R R9
U 1 1 5AA260E8
P 6100 3350
AR Path="/570E376A/5AA260E8" Ref="R9"  Part="1" 
AR Path="/5A6EF158/5AA260E8" Ref="R16"  Part="1" 
F 0 "R16" V 6200 3350 50  0000 C CNN
F 1 "120R" V 6100 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6030 3350 10  0000 C CNN
F 3 "" H 6100 3350 50  0000 C CNN
	1    6100 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3350 6350 3350
Text Label 5100 3250 0    47   ~ 0
M1_M1B
Text Label 5100 3150 0    47   ~ 0
M1_M1A
Text Label 5100 3050 0    47   ~ 0
M1_M2A
Text Label 5100 2950 0    47   ~ 0
M1_M2B
$Comp
L power:GND #PWR058
U 1 1 5AA260EB
P 3800 5850
AR Path="/570E376A/5AA260EB" Ref="#PWR058"  Part="1" 
AR Path="/5A6EF158/5AA260EB" Ref="#PWR098"  Part="1" 
F 0 "#PWR098" H 3800 5600 50  0001 C CNN
F 1 "GND" H 3808 5676 50  0000 C CNN
F 2 "" H 3800 5850 50  0000 C CNN
F 3 "" H 3800 5850 50  0000 C CNN
	1    3800 5850
	-1   0    0    -1  
$EndComp
Text Label 4150 5500 0    47   ~ 0
CFG2
$Comp
L power:GND #PWR059
U 1 1 5AA260EE
P 4400 5850
AR Path="/570E376A/5AA260EE" Ref="#PWR059"  Part="1" 
AR Path="/5A6EF158/5AA260EE" Ref="#PWR099"  Part="1" 
F 0 "#PWR099" H 4400 5600 50  0001 C CNN
F 1 "GND" H 4408 5676 50  0000 C CNN
F 2 "" H 4400 5850 50  0000 C CNN
F 3 "" H 4400 5850 50  0000 C CNN
	1    4400 5850
	-1   0    0    -1  
$EndComp
Text Label 4750 5500 0    47   ~ 0
CFG3
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5AA260F1
P 5900 3400
AR Path="/570E376A/5AA260F1" Ref="#FLG04"  Part="1" 
AR Path="/5A6EF158/5AA260F1" Ref="#FLG06"  Part="1" 
F 0 "#FLG06" H 5900 3495 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 3350 50  0001 C CNN
F 2 "" H 5900 3400 50  0000 C CNN
F 3 "" H 5900 3400 50  0000 C CNN
	1    5900 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 3350 6350 3250
Wire Wire Line
	5900 5550 5900 5600
Wire Wire Line
	6600 5550 6600 5600
Wire Wire Line
	7250 5550 7250 5600
Wire Wire Line
	7950 5550 7950 5600
Wire Wire Line
	4000 3250 4000 3200
Wire Wire Line
	4000 3150 4100 3150
Wire Wire Line
	4000 3250 4100 3250
Text Notes 6700 3350 0    47   ~ 0
For SilentStepSticks, only JP0 is fitted with 100R, which also limits logic current.\n
$Comp
L power:+5V #PWR048
U 1 1 5AA260F2
P 3150 5150
AR Path="/570E376A/5AA260F2" Ref="#PWR048"  Part="1" 
AR Path="/5A6EF158/5AA260F2" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 3150 5000 50  0001 C CNN
F 1 "+5V" H 3165 5323 50  0000 C CNN
F 2 "" H 3150 5150 50  0001 C CNN
F 3 "" H 3150 5150 50  0001 C CNN
	1    3150 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR049
U 1 1 5A96B7C3
P 3800 5150
AR Path="/570E376A/5A96B7C3" Ref="#PWR049"  Part="1" 
AR Path="/5A6EF158/5A96B7C3" Ref="#PWR089"  Part="1" 
F 0 "#PWR089" H 3800 5000 50  0001 C CNN
F 1 "+5V" H 3815 5323 50  0000 C CNN
F 2 "" H 3800 5150 50  0001 C CNN
F 3 "" H 3800 5150 50  0001 C CNN
	1    3800 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR050
U 1 1 5A96B7F0
P 4400 5150
AR Path="/570E376A/5A96B7F0" Ref="#PWR050"  Part="1" 
AR Path="/5A6EF158/5A96B7F0" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 4400 5000 50  0001 C CNN
F 1 "+5V" H 4415 5323 50  0000 C CNN
F 2 "" H 4400 5150 50  0001 C CNN
F 3 "" H 4400 5150 50  0001 C CNN
	1    4400 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR044
U 1 1 5A96D92D
P 6000 2650
AR Path="/570E376A/5A96D92D" Ref="#PWR044"  Part="1" 
AR Path="/5A6EF158/5A96D92D" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 6000 2500 50  0001 C CNN
F 1 "+12V" H 6015 2823 50  0000 C CNN
F 2 "" H 6000 2650 50  0001 C CNN
F 3 "" H 6000 2650 50  0001 C CNN
	1    6000 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR051
U 1 1 5AA260F6
P 5900 5250
AR Path="/570E376A/5AA260F6" Ref="#PWR051"  Part="1" 
AR Path="/5A6EF158/5AA260F6" Ref="#PWR091"  Part="1" 
F 0 "#PWR091" H 5900 5100 50  0001 C CNN
F 1 "+12V" H 5915 5423 50  0000 C CNN
F 2 "" H 5900 5250 50  0001 C CNN
F 3 "" H 5900 5250 50  0001 C CNN
	1    5900 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR052
U 1 1 5A96DCA5
P 6600 5250
AR Path="/570E376A/5A96DCA5" Ref="#PWR052"  Part="1" 
AR Path="/5A6EF158/5A96DCA5" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 6600 5100 50  0001 C CNN
F 1 "+12V" H 6615 5423 50  0000 C CNN
F 2 "" H 6600 5250 50  0001 C CNN
F 3 "" H 6600 5250 50  0001 C CNN
	1    6600 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR053
U 1 1 5A96DCD2
P 7250 5250
AR Path="/570E376A/5A96DCD2" Ref="#PWR053"  Part="1" 
AR Path="/5A6EF158/5A96DCD2" Ref="#PWR093"  Part="1" 
F 0 "#PWR093" H 7250 5100 50  0001 C CNN
F 1 "+12V" H 7265 5423 50  0000 C CNN
F 2 "" H 7250 5250 50  0001 C CNN
F 3 "" H 7250 5250 50  0001 C CNN
	1    7250 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR054
U 1 1 5A96DCFF
P 7950 5250
AR Path="/570E376A/5A96DCFF" Ref="#PWR054"  Part="1" 
AR Path="/5A6EF158/5A96DCFF" Ref="#PWR094"  Part="1" 
F 0 "#PWR094" H 7950 5100 50  0001 C CNN
F 1 "+12V" H 7965 5423 50  0000 C CNN
F 2 "" H 7950 5250 50  0001 C CNN
F 3 "" H 7950 5250 50  0001 C CNN
	1    7950 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR055
U 1 1 5A96DD2C
P 8700 5400
AR Path="/570E376A/5A96DD2C" Ref="#PWR055"  Part="1" 
AR Path="/5A6EF158/5A96DD2C" Ref="#PWR095"  Part="1" 
F 0 "#PWR095" H 8700 5250 50  0001 C CNN
F 1 "+12V" H 8715 5573 50  0000 C CNN
F 2 "" H 8700 5400 50  0001 C CNN
F 3 "" H 8700 5400 50  0001 C CNN
	1    8700 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR046
U 1 1 5AA260FB
P 6350 3250
AR Path="/570E376A/5AA260FB" Ref="#PWR046"  Part="1" 
AR Path="/5A6EF158/5AA260FB" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 6350 3100 50  0001 C CNN
F 1 "+5V" H 6365 3423 50  0000 C CNN
F 2 "" H 6350 3250 50  0001 C CNN
F 3 "" H 6350 3250 50  0001 C CNN
	1    6350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3400 5900 3350
Wire Wire Line
	5100 3350 5900 3350
Connection ~ 5900 3350
Wire Wire Line
	5900 3350 5950 3350
Wire Wire Line
	6000 2900 6000 2850
Wire Wire Line
	6000 2850 5100 2850
$Comp
L conn:GS3 J10
U 1 1 5A720E1B
P 3300 5500
AR Path="/570E376A/5A720E1B" Ref="J10"  Part="1" 
AR Path="/5A6EF158/5A720E1B" Ref="J13"  Part="1" 
F 0 "J13" H 3300 5805 50  0000 C CNN
F 1 "Cfg1" H 3300 5714 50  0000 C CNN
F 2 "Connectors:GS3" V 3388 5426 50  0001 C CNN
F 3 "" H 3300 5500 50  0001 C CNN
	1    3300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5500 3500 5500
Wire Wire Line
	3150 5150 3150 5400
Wire Wire Line
	3150 5600 3150 5850
$Comp
L conn:GS3 J11
U 1 1 5A728B3C
P 3950 5500
AR Path="/570E376A/5A728B3C" Ref="J11"  Part="1" 
AR Path="/5A6EF158/5A728B3C" Ref="J14"  Part="1" 
F 0 "J14" H 3950 5805 50  0000 C CNN
F 1 "Cfg2" H 3950 5714 50  0000 C CNN
F 2 "Connectors:GS3" V 4038 5426 50  0001 C CNN
F 3 "" H 3950 5500 50  0001 C CNN
	1    3950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5500 4150 5500
Wire Wire Line
	3800 5150 3800 5400
Wire Wire Line
	3800 5600 3800 5850
$Comp
L conn:GS3 J12
U 1 1 5A72E6D3
P 4550 5500
AR Path="/570E376A/5A72E6D3" Ref="J12"  Part="1" 
AR Path="/5A6EF158/5A72E6D3" Ref="J15"  Part="1" 
F 0 "J15" H 4550 5805 50  0000 C CNN
F 1 "Cfg3" H 4550 5714 50  0000 C CNN
F 2 "Connectors:GS3" V 4638 5426 50  0001 C CNN
F 3 "" H 4550 5500 50  0001 C CNN
	1    4550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5150 4400 5400
Wire Wire Line
	4400 5600 4400 5850
Wire Wire Line
	4750 5500 4700 5500
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5ACA3956
P 3600 3200
AR Path="/570E376A/5ACA3956" Ref="#FLG03"  Part="1" 
AR Path="/5A6EF158/5ACA3956" Ref="#FLG05"  Part="1" 
F 0 "#FLG05" H 3600 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 3374 50  0000 C CNN
F 2 "" H 3600 3200 50  0001 C CNN
F 3 "" H 3600 3200 50  0001 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3200 4000 3200
Connection ~ 4000 3200
Wire Wire Line
	4000 3200 4000 3150
$EndSCHEMATC