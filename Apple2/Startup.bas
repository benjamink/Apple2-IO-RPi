10  REM *** PROMPT TO DROP TO BASIC OR OPEN BITSY BYE ***
11  GOSUB 1000
12  PRINT "Choose whether to drop to BASIC or"
13  PRINT "go to the BitsyBye interface"
14  PRINT
15  INPUT "Enter BASIC? (Y/N) ";A$
16  IF (A$ = "Y" OR A$ = "y") THEN 50
17  PRINT CHR$ (4)"BYE"
50  REM *** DROP TO BASIC ***
51  INPUT "Use 80-column mode? (Y/N) ";A$
52  PRINT "Entering BASIC"
53  REM PRINT CHR$ (4)"-rpi.command"
54  IF (A$ = "N" OR A$ = "n") THEN 200
55  PRINT CHR$ (4)"PR#3"
200  REM *** PRINT OUT HELP ***
201  GOSUB 1000
202  PRINT "To start a shell to the RPi, type:"
203  PRINT
204  PRINT "  -shell"
205  PRINT 
206  PRINT "To add RPI command to ProDOS, type:"
207  PRINT
208  PRINT "  -rpi.command"
209  PRINT 
210  END
1000  REM *** PRINT HEADER ***
1001  HOME
1002  PRINT "Apple2-IO-RPi"
1003  PRINT "(c)2021-2023 Terence J. Boldt"
1004  PRINT 
1005  PRINT "This drive is dynamically generated"
1006  PRINT "from the current working directory on"
1007  PRINT "the Raspberry Pi and is in RAM only."
1008  PRINT
1009  RETURN 

