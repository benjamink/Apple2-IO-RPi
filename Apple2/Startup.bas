10  REM PROMPT TO DROP TO BASIC OR OPEN BITSY BYE
11  GOSUB 71
12  PRINT "Choose whether to drop to BASIC or"
13  PRINT "go to the BitsyBye interface"
14  PRINT ""
15  PRINT "Enter BASIC? (Y/N) "
16  INPUT A$
17  IF (A$ = "Y" OR A$ = "y") THEN 50
18  PRINT CHR$ (4)"BYE"
50  REM  DROP TO BASIC
51  PRINT "Use 80-column mode? (Y/N) "
52  INPUT A$
53  PRINT "Entering BASIC"
54  IF (A$ = "N" OR A$ = "n") THEN 60
55  PRINT CHR$ (4)"PR#3"
60  REM  PRINT OUT HELP
61  GOSUB 71
62  PRINT "To start a shell to the RPi, type:"
63  PRINT ""
64  PRINT "  -shell"
65  PRINT ""
66  PRINT "To add RPI command to ProDOS, type:"
67  PRINT ""
68  PRINT "  -rpi.command"
69  PRINT ""
70  END : REM QUIT TO BASIC
71  REM  PRINT HEADER
72  HOME : REM DUMMY COMMENT FOR HACKY PARSER FIX
73  PRINT "Apple2-IO-RPi"
74  PRINT "(c)2021-2023 Terence J. Boldt"
75  PRINT ""
76  PRINT "This drive is dynamically generated"
77  PRINT "from the current working directory on"
78  PRINT "the Raspberry Pi and is in RAM only."
79  PRINT ""
80  RETURN
