DECLARE SUB displayID ()
DECLARE SUB selec (sel!)
DECLARE SUB box (X1#, Y1#, X2#, Y2#, X3#, Y3#, X4#, Y4#)

DECLARE SUB xit ()
DECLARE SUB classaverage ()
DECLARE SUB addstudent ()
DECLARE SUB Displayall ()
DECLARE SUB belowC ()
DECLARE SUB singlestudent ()
DECLARE SUB mainmenu ()

DIM SHARED stu$(230, 2)
DIM SHARED per(230, 2)
CLS


mainmenu

SUB addstudent
STATIC done
CLS
LOCATE 5, 35: PRINT "Add Student"
box 8, 25, 8, 55, 12, 25, 12, 55
LOCATE 9, 30: INPUT "Last Name: "; las$
LOCATE 10, 30: INPUT "Student ID: "; studid$
LOCATE 11, 30: INPUT "Points: "; points



 done = done + 1
 stu$(done, 2) = las$
 stu$(done, 1) = studid$
 per(done, 1) = points
per(done, 2) = points / 400 * 100

 




END SUB

SUB belowC
 CLS
 FOR x = 1 TO 230
  IF per(x, 2) <> 0 THEN

   IF per(x, 2) <= 70 THEN
   PRINT "ษอออออออออออออออออออออออออออออออออออออป"
   PRINT "บStudent ID: ", stu$(x, 1)
   PRINT "บStudent Name: ", stu$(x, 2)
   PRINT "บPoints: ", per(x, 1)
   PRINT "บPercentage: ";
   PRINT USING "##.#"; per(x, 2)
   PRINT "ศอออออออออออออออออออออออออออออออออออออผ"
   PRINT
  
   END IF
 
  END IF
NEXT x
PRINT "Press <ESC> to continue"
WHILE INKEY$ <> CHR$(27)
WEND
END SUB

SUB box (X1#, Y1#, X2#, Y2#, X3#, Y3#, X4#, Y4#)
  LOCATE X1#, Y1#: PRINT CHR$(201)
  LOCATE X2#, Y2#: PRINT CHR$(187)
  LOCATE X3#, Y3#: PRINT CHR$(200)
  LOCATE X4#, Y4#: PRINT CHR$(188)
  Y1# = Y1# + 1
  Y2# = Y2# - 1
FOR x = Y1# TO Y2#
   LOCATE X1#, x: PRINT CHR$(205)
NEXT x
  Y1# = Y1# - 1
  Y2# = Y2# + 1
  Y3# = Y3# + 1
  Y4# = Y4# - 1
FOR x = Y3# TO Y4#
  LOCATE X3#, x: PRINT CHR$(205)
NEXT x
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

SUB classaverage
 CLS

FOR x = 1 TO 230
 IF per(x, 1) <> 0 THEN
  entry = entry + 1
  LET topoints = topoints + per(x, 1)
 END IF
NEXT x
 IF entry = 0 THEN
 END
 END IF

 divby = entry * 400
 aver = topoints / divby * 100
 PRINT "ษอออออออออออออออออออออออออออออออออออออออออออออป"
 PRINT "บ                                             บ"

 PRINT "บClass Average of "; entry; "Students is ";
 PRINT USING "##.#"; aver;
 PRINT "         บ"
 PRINT "บ                                             บ"
 PRINT "ศอออออออออออออออออออออออออออออออออออออออออออออผ"
 PRINT
 PRINT "Press <ESC> to continue"
 WHILE INKEY$ <> CHR$(27)
 WEND


END SUB

SUB Displayall
 CLS



 FOR x = 1 TO 5
  IF stu$(x, 1) <> "" THEN
   
 
   PRINT "ษอออออออออออออออออออออออออออออออออออออป"
   PRINT "บStudent ID: ", stu$(x, 1)
   PRINT "บStudent Name: ", stu$(x, 2)
   PRINT "บPoints: ", per(x, 1)
   PRINT "บPercentage: ";
   PRINT USING "##.#"; per(x, 2)
   PRINT "ศอออออออออออออออออออออออออออออออออออออผ"
   PRINT
  END IF
NEXT x
PRINT
PRINT
PRINT
PRINT "Press <ESC> to continue"
WHILE INKEY$ <> CHR$(27)
WEND

END SUB

SUB displayID
CLS
FOR x = 1 TO 230
 IF stu$(x, 1) <> "" THEN
  PRINT "I.D.: ";
  PRINT stu$(x, 1); " ";
  PRINT per(x, 2);
  PRINT "%"
  PRINT
 END IF
NEXT x
PRINT "Press <ESC> to continue"
WHILE INKEY$ <> CHR$(27)
WEND

END SUB

SUB mainmenu
CLS
FOR x = 1 TO 6
PRINT
NEXT x
PRINT "                 1)       Add Student"
PRINT
PRINT "                 2)       Display All students"
PRINT
PRINT "                 3)       Display Students by ID"
PRINT
PRINT "                 4)       Display students under 70%"
PRINT
PRINT "                 5)       Display Class Average"
PRINT
PRINT "                 6)       Display Single student"
PRINT
PRINT "                 7)       Exit Grade program"
PRINT
box 5, 15, 5, 53, 20, 15, 20, 53
box 21, 15, 21, 53, 23, 15, 23, 53

LOCATE 22, 17: INPUT "Selection: "; sel
selec (sel)

END SUB

SUB selec (sel)
SELECT CASE sel
CASE 1
  addstudent
CASE 2
  Displayall
CASE 3
  displayID
CASE 4
  belowC
CASE 5
  classaverage
CASE 6
  singlestudent
CASE 7
xit
END SELECT
  mainmenu

END SUB

SUB singlestudent
CLS


 INPUT "Student Id: ", stuid$
 PRINT
 IF stuid$ = "" THEN
 GOSUB Nofound
 END IF
  FOR x = 1 TO 230
   IF stu$(x, 1) = stuid$ THEN
   PRINT "ษอออออออออออออออออออออออออออออออออออออป"
   PRINT "บStudent ID: ", stu$(x, 1)
   PRINT "บStudent Name: ", stu$(x, 2)
   PRINT "บPoints: ", per(x, 1)
   PRINT "บPercentage: ";
   PRINT USING "##.#"; per(x, 2)
   PRINT "ศอออออออออออออออออออออออออออออออออออออผ"
   PRINT
   found = 1
   END IF
  NEXT x
Nofound:
  IF found = 0 THEN
  box 10, 18, 10, 50, 12, 18, 12, 50
  LOCATE 11, 24: PRINT "Student Not Found!"
  END IF
  PRINT
  PRINT "Press <ESC> to continue"
  WHILE INKEY$ <> CHR$(27)
  WEND

END SUB

SUB xit
CLS
box 10, 17, 10, 55, 15, 17, 15, 55
LOCATE 12, 20: INPUT "Are you sure you want to Quit "; exit$
LET exit$ = UCASE$(exit$)
SELECT CASE exit$
CASE "Y"
END
CASE "YES"
END
END SELECT




END SUB

