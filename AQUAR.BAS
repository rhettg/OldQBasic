DECLARE SUB drawbuilding ()
DECLARE SUB promt ()
DECLARE SUB main ()
DECLARE SUB comm ()
DECLARE SUB xit ()
DECLARE SUB password ()
DECLARE SUB submers ()
DECLARE SUB box (X1#, Y1#, X2#, Y2#, X3#, Y3#, X4#, Y4#)
DECLARE SUB title (TIT$)
DECLARE SUB safety ()
DECLARE SUB cam ()
DECLARE SUB Options ()
DECLARE SUB climate
main

SUB box (X1#, Y1#, X2#, Y2#, X3#, Y3#, X4#, Y4#)
  LOCATE X1#, Y1#: PRINT CHR$(201)
  LOCATE X2#, Y2#: PRINT CHR$(187)
  LOCATE X3#, Y3#: PRINT CHR$(200)
  LOCATE X4#, Y4#: PRINT CHR$(188)
  Y1# = Y1# + 1
  Y2# = Y2# - 1
FOR X = Y1# TO Y2#
   LOCATE X1#, X: PRINT CHR$(205)
NEXT X
  Y1# = Y1# - 1
  Y2# = Y2# + 1
  Y3# = Y3# + 1
  Y4# = Y4# - 1
FOR X = Y3# TO Y4#
  LOCATE X3#, X: PRINT CHR$(205)
NEXT X
  Y3# = Y3# - 1
  Y4# = Y4# + 1
  X1# = X1# + 1
  X3# = X3# - 1
FOR N = X1# TO X3#
    LOCATE N, Y1#: PRINT CHR$(186)
NEXT N
  X1# = X1# - 1
  X3# = X3# + 1
  X2# = X2# + 1
  X4# = X4# - 1
FOR J = X2# TO X4#
  LOCATE J, Y4#: PRINT CHR$(186)
NEXT J

END SUB

SUB cam
CLS
title ("Camera Control")
box 10, 20, 10, 65, 15, 20, 15, 65

LOCATE 12, 23: PRINT "Function Not accessable on this terminal"


END SUB

SUB climate
START:
CLS
CALL title("Climate Menu")
box 5, 18, 5, 58, 16, 18, 16, 58
box 16, 18, 16, 58, 20, 18, 20, 58
LOCATE 6, 27: PRINT "Climate Change for:"
LOCATE 8, 24: PRINT "Security Level.....1A"
LOCATE 9, 24: PRINT "Level 1............1"
LOCATE 10, 24: PRINT "Level 2............2"
LOCATE 11, 24: PRINT "Level 3............3"
LOCATE 12, 24: PRINT "Level 4............4"
LOCATE 13, 24: PRINT "Level 5............5"
LOCATE 14, 24: PRINT "Level 6 and Tube...6"
LOCATE 15, 24: PRINT "Main Menu.........7"
LOCATE 18, 26: INPUT "Level "; lev$
IF lev$ = "7" THEN
main
END IF
CLS
title ("Climate for level   ")
LOCATE 1, 50: PRINT lev$
box 7, 60, 7, 72, 13, 60, 13, 72
box 5, 18, 5, 58, 10, 18, 10, 58

LOCATE 7, 23: PRINT "1).....Temp"
LOCATE 8, 23: PRINT "2).....Air Pump"
LOCATE 9, 23: PRINT "3).......Quit"
CLI:
LOCATE 8, 67: PRINT temp$
LOCATE 10, 66: PRINT PUMP$

box 11, 18, 11, 58, 15, 18, 15, 58


LOCATE 8, 61: PRINT "Temp  "
LOCATE 10, 61: PRINT "Pump "
LOCATE 13, 20: INPUT "Selection "; sel$

SELECT CASE sel$
        CASE "1"
          LOCATE 13, 20: PRINT "             "
          LOCATE 13, 20: INPUT "Temp "; temp$
          LOCATE 8, 66: PRINT temp$
        CASE "2"
          LOCATE 13, 20: PRINT "             "
          LOCATE 13, 20: INPUT "Pump(on,off) "; PUMP$
          LET PUMP$ = UCASE$(PUMP$)
          IF PUMP$ = "ON" THEN
            LOCATE 10, 66: PRINT "ON"
             ELSE
             IF PUMP$ = "OFF" THEN
             LOCATE 10, 66: PRINT "OFF"
             ELSE
               LOCATE 13, 20: PRINT "Not a selection"
               GOSUB CLI
             END IF
          END IF
         CASE "3"
          main
         
          END SELECT
          SLEEP 2
          GOSUB START
END SUB

SUB comm
END SUB

SUB Door
END SUB

SUB drawbuilding
CLS
SCREEN 1
PSET (80, 5)
DRAW "r100 d180 l100 u180"
DRAW "d30 R100 D30 L100 D30 R100 D30 L100 D30 R100 D30 L100"
LEVEL = 1
FOR X = 2 TO 21
IF X < 3 THEN
X = X + 4
ELSE
X = X + 3
END IF
LEVEL = LEVEL + 1
LOCATE X, 3: PRINT LEVEL
NEXT X
LOCATE 1, 2: PRINT "LEVEL"
LOCATE 3, 4: PRINT "1"


END SUB

SUB login


       CALL promt
        INPUT "USER NAME"; USER$       'LOG IN USER NAME
       CLS
       

END SUB

SUB main
GOSUB main
main:
      
CLS
   
title "MAIN MENU"
     box 5, 15, 5, 55, 14, 15, 14, 55
     LOCATE 7, 16
     PRINT "   1)..........Safety system"     'MAIN MENU
     LOCATE 8, 16
     PRINT "   2)..........Options"
     LOCATE 9, 16
     PRINT "   3)..........Camera Control"
     LOCATE 10, 16
     PRINT "   4)..........Submarine Control"
     LOCATE 11, 16
     PRINT "   5)..........Door Control"
     LOCATE 12, 16
     PRINT "   6)..........Climate Control"
     LOCATE 13, 16
     PRINT "   7)..........Exit"
     LOCATE 25, 16
     INPUT "What is your selection"; sel1%
     SELECT CASE sel1%
     CASE 1
     CALL safety
     CASE 2
     CALL Options
     CASE 3                         'SELECT SUBMENU
     CALL cam
     CASE 4
     CALL submers
     CASE 5
     CALL comm
     CASE 6
     CALL climate
     CASE 7
     CALL xit
     END SELECT
   


END SUB

SUB Options
END SUB

SUB password
       CLS
       INPUT "USER NAME"; USER$       'LOG IN USER NAME
       CLS
LET USER$ = UCASE$(USER$)
SELECT CASE USER$

CASE "RHETT"
pass1$ = "Vorter"
CASE "MERRICK"
pass1$ = "Science"
CASE "CARLOS"
pass1$ = "Gomer"
CASE "UNRUH"
pass1$ = "Ernie"
CASE "ALVARO"
pass1$ = "alfreddo"
CASE ELSE
PRINT "User not on file!"
CALL password
END SELECT
pass:
PRINT "SECURITY ACCESS CODE REQUIRED "
        CALL promt
        PRINT "PASSWORD for "; USER$;
        INPUT ; pass$   'PROMT FOR PASSWORD
          IF UCASE$(pass1$) = UCASE$(pass$) THEN           'CHECK PASSWORD
             PRINT "CORRECT"  'RIGHT
             SELECT CASE USER$
             CASE "RHETT"
             PRINT USER$; " Has Maximum security clearance (3)"
             CASE "MERRICK"
             PRINT USER$; " Has Maximum security clearance (3)"
             CASE "CARLOS"
             PRINT USER$; " Has Maximum security clearance (3)"
             CASE "UNRUH"
             PRINT USER$; " Has Maximum security clearance (3)"
             CASE ELSE
             PRINT USER$; " Has a level 2 security clearance"
             END SELECT
             SOUND 2000, 1
             SOUND 2500, 1
             CLS
          ELSE
              PRINT " ACCESS DENIED"   'WRONG
              SOUND 1000, 2
              SOUND 500, 2
              SLEEP 2
              GOSUB pass
          END IF
              

END SUB

'
SUB promt
       CLS
       box 10, 20, 10, 60, 15, 20, 15, 60
       LOCATE 12, 25
       
END SUB

SUB safety
CLS
SCREEN 0

box 7, 20, 7, 60, 15, 20, 15, 60

LOCATE 7, 35: PRINT "Safety Menu"

LOCATE 9, 25: PRINT "Visual Monitor......1"
LOCATE 10, 28: PRINT "Bypass...........2"
LOCATE 11, 25: PRINT "Alarm Activate......3"
LOCATE 12, 25: PRINT "Exit to main........4"

LOCATE 24, 25: INPUT "Selection ", sel
SELECT CASE sel
CASE 1
GOSUB vis
CASE 2
GOSUB byp
CASE 3
GOSUB alr
CASE 4
main
END SELECT

vis:
drawbuilding
LOCATE 25, 2: INPUT "Press ENTER to exit", dummy
safety



byp:



alr:




END SUB

SUB submers

CLS
title ("Submersable Status")
box 3, 1, 3, 24, 10, 1, 10, 24
LOCATE 4, 4: PRINT "Status for R/C Subs"
LOCATE 5, 3: PRINT "Sub1:"
LOCATE 6, 3: PRINT "Sub2:"
LOCATE 7, 3: PRINT "Sub3:"
LOCATE 8, 3: PRINT "Sub4:"
LOCATE 9, 3: PRINT "Sub5:"
RANDOMIZE TIMER
FOR i% = 5 TO 9
IF RND < .5 THEN
LOCATE i%, 8: PRINT "Used"
ELSE
LOCATE i%, 8: PRINT "Docked"
END IF
NEXT i%
FOR i% = 5 TO 9

LET perc% = INT(RND * 100)
IF perc% < 20 THEN
COLOR 4
ELSE
COLOR 7
END IF
LOCATE i%, 28: PRINT "Batt %"
LOCATE i%, 35: PRINT perc%
NEXT i%
COLOR 7
box 3, 25, 3, 42, 10, 25, 10, 42
LOCATE 4, 27: PRINT "Battery Power"
SLEEP 5
main
END SUB

SUB title (TIT$)
        N = (80 - LEN(TIT$)) / 2
        PRINT SPACE$(N); TIT$
        FOR X = 1 TO 79
        
        LOCATE 2, X: PRINT CHR$(205)
        NEXT X
END SUB

SUB xit
CLS
promt
LOCATE 12, 22: PRINT "Are you sure you want to exit(y,n)"
LOCATE 13, 22: INPUT yn$
IF UCASE$(yn$) = "Y" THEN
CLS
END
ELSE
main
END IF
END SUB

