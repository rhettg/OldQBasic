DECLARE SUB box (x1!, y1!, x2!, y2!)
CLS
box 20, 5, 50, 23

SUB box (x1, y1, x2, y2)        'Here is my new and improved version of
 LOCATE y1, x1: PRINT "�"       ' my box subroutine. I just recently have
 LOCATE y1, x2: PRINT "�"       'done this, I can't get it down below this
 LOCATE y2, x1: PRINT "�"       '15 lines of code. Next is to add color,
 LOCATE y2, x2: PRINT "�"       'and title options. (whoa we almost got WIN
 j1 = x1 + 1                    'going here, not)

 FOR m = x1 TO x2 - 2
  LOCATE y1, j1: PRINT "�"
  LOCATE y2, j1: PRINT "�"
  j1 = j1 + 1
 NEXT m

 i1 = y1 + 1
 FOR m = y1 TO y2 - 2
  LOCATE i1, x1: PRINT "�"
  LOCATE i1, x2: PRINT "�"
   i1 = i1 + 1
 NEXT m

END SUB

