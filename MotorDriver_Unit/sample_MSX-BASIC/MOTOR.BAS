100 '
110 ' TITLE: SAMPLE for Motor-Driver Unit for IOEmu: Multiplex
120 ' FILE: motor.bas
130 '
140 SCREEN0:WIDTH40
150 '
160 'Init
170 DEFINT A-Z:TF=0:TC=0:RV=0:CL=3:S1=0:RE=0:VA=0:SD=0
180 OUT &H1F,1
190 '
200 'Message
210 LOCATE 0,0:PRINT "Motor-Driver Unit for IOEmu"
220 LOCATE 0,CL+0:PRINT "> Please Power on Motor-Driver Unit.";SPC(20)
230 LOCATE 0,CL+1:PRINT "> Press any key to start.";SPC(20)
240 IF INKEY$="" THEN 240
250 LOCATE 0,CL+0:PRINT "> Let's try Motor-Driver Unit!";SPC(20)
260 GOSUB 1290
270 MD=&H3F:GOSUB 920:MD=&HFF:GOSUB920
280 '
290 'Enable interrupt
300 ON STOP GOSUB 1000:STOP ON
310 ON INTERVAL=6 GOSUB 960 'Sync:0.1s
320 INTERVAL ON
330 '
340 'Main loop
350 IF TF=0 THEN 350
360 TF=0:K$=INKEY$
370 IF K$="" THEN GOSUB 560:GOTO 350
380 IF K$=CHR$(&H1C) THEN GOSUB 590:GOTO 350
390 IF K$=CHR$(&H1D) THEN GOSUB 620:GOTO 350
400 IF K$=CHR$(&H1E) THEN GOSUB 650:GOTO 350
410 IF K$=CHR$(&H1F) THEN GOSUB 670:GOTO 350
420 IF K$="s" OR K$="S" THEN GOSUB 690:GOTO 350
430 IF K$="a" OR K$="A" THEN GOSUB 730:GOTO 350
440 IF K$="d" OR K$="D" THEN GOSUB 710:GOTO 350
450 IF K$="w" OR K$="W" THEN GOSUB 750:GOTO 350
460 IF K$="x" OR K$="X" THEN GOSUB 770:GOTO 350
470 IF K$="q" OR K$="Q" THEN GOSUB 790:GOTO 350
480 IF K$="r" OR K$="R" THEN GOSUB 810:GOTO 350
490 IF K$="p" OR K$="P" THEN GOSUB 830:GOTO 350
500 IF K$="e" OR K$="E" THEN GOSUB 850:GOTO 350
510 IF K$="g" OR K$="G" THEN GOSUB 870:GOTO 350
520 IF K$="1" THEN GOSUB 890:GOTO 350
530 GOTO 350
540 '
550 'Commands
560 'NOP
570 MD=&H0:GOSUB 920:RETURN
580 'RIGHT
590 IF RV=0 THEN MD=&H5 ELSE MD=&H8
600 GOSUB 920:RETURN
610 'LEFT
620 IF RV=0 THEN MD=&H6 ELSE MD=&H7
630 GOSUB 920:RETURN
640 'FORWARD
650 MD=&H2:RV=0:GOSUB 920:RETURN
660 'REVERSE
670 MD=&H3:RV=1:GOSUB 920:RETURN
680 'STOP
690 MD=&H1:GOSUB 920:RETURN
700 'RTURN
710 MD=&H9:GOSUB 920:RETURN
720 'LTURN
730 MD=&HA:GOSUB 920:RETURN
740 'LIFTUP
750 MD=&HC:GOSUB 920:RETURN
760 'LIFTDWN
770 MD=&HD:GOSUB 920:RETURN
780 'LIFTSTP
790 MD=&HB:GOSUB 920:RETURN
800 'REC
810 MD=&H10:GOSUB 920:RETURN
820 'PLAY
830 MD=&H11:GOSUB 920:RETURN
840 'RP-STOP
850 MD=&H12:GOSUB 920:RETURN
860 'GETSNS1
870 MD=&H14:GOSUB 920:GOSUB 1030:RETURN
880 'ENSNS1
890 MD=&H13:GOSUB 920:GOSUB 1110:RETURN
900 '
910 'Send command
920 OUT &H10,MD
930 RETURN
940 '
950 'Timer Interrupt
960 TF=1':TC=TC+1
970 RETURN
980 '
990 'CTRL+STOP
1000 MD=&H1:GOSUB 920:MD=&HB:GOSUB 920:CLS:END
1010 '
1020 'Get Sensor1 value
1030 IF NOT S1 THEN RETURN
1040 GOSUB 1180:SD=VA*256
1050 GOSUB 1180:SD=SD+VA:V!=SD*.017:'VA=V!
1060 LOCATE 0,CL+1:PRINT ">  Sensor1 Value: "+STR$(V!)+"cm";SPC(20)
1070 GOSUB 1250
1080 RETURN
1090 '
1100 'Toggle Sensor1 flag
1110 GOSUB 1180:IF VA=&H55 THEN S1=-1 ELSE S1=0
1120 IF S1 THEN LOCATE 0,CL+0:PRINT "> Enable Sensor1.";SPC(20)
1130 IF NOT S1 THEN LOCATE 0,CL+0:PRINT "> Disable Sensor1.";SPC(20)
1140 GOSUB 1250
1150 RETURN
1160 '
1170 'Get rx-data
1180 TIME=0
1190 IF TIME>60 THEN VA=0:RETURN
1200 RE=INP(&H11):IF (RE AND &H1)<>1 THEN 1190
1210 VA=INP(&H10)
1220 RETURN
1230 '
1240 'Flash Rx-FIFO
1250 RE=INP(&H11):IF (RE AND &H1)=1 THEN VA=INP(&H10):GOTO 1250
1260 RETURN
1270 '
1280 'List of Command keys
1290 LOCATE 0,CL+ 1:PRINT "> List of command keys: ";SPC(20)
1300 LOCATE 0,CL+ 4:PRINT "# Cursor keys ---  Driving direction"
1310 PRINT "# [s|S] key   ---  Stop crawler motor"
1320 PRINT "# [a|A] key   ---  Turn left"
1330 PRINT "# [d|D] key   ---  Turn right"
1340 PRINT "# [w|W] key   ---  Lift uo"
1350 PRINT "# [x|X] key   ---  Lift down"
1360 PRINT "# [q|Q] key   ---  Stop lift"
1370 PRINT "# [r|R] key   ---  REC"
1380 PRINT "# [p|P] key   ---  PLAY"
1390 PRINT "# [e|E] key   ---  Stop Rec/Play"
1400 PRINT "# [g|G] key   ---  Get SensorX val"
1410 PRINT "# [1]   key   ---  Sensor1 On/Off toggle"
1420 RETURN
