DECLARE SUB box (x1!, y1!, x2!, y2!)
CLS
box 20, 5, 50, 23

SUB box (x1, y1, x2, y2)        'Here is my new and improved version of
 LOCATE y1, x1: PRINT "É"       ' my box subroutine. I just recently have
 LOCATE y1, x2: PRINT "»"       'done this, I can't get it down below this
 LOCATE y2, x1: PRINT "È"       '15 lines of code. Next is to add color,
 LOCATE y2, x2: PRINT "¼"       'and title options. (whoa we almost got WIN
 j1 = x1 + 1                    'going here, not)

 FOR m = x1 TO x2 - 2
  LOCATE y1, j1: PRINT "Í"
  LOCATE y2, j1: PRINT "Í"
  j1 = j1 + 1
 NEXT m

 i1 = y1 + 1
 FOR m = y1 TO y2 - 2
  LOCATE i1, x1: PRINT "º"
  LOCATE i1, x2: PRINT "º"
   i1 = i1 + 1
 NEXT m

END SUB

