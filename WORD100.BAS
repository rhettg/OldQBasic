' This program was also for a problem of the week in Geometry. I believe
' It gave you a value for each letter and you had to calculate the value
' of an entire word. This made the process much easier. I think the SUB
' findvalue could have been optimized a little.

DECLARE SUB findvalue ()
COMMON SHARED num%
COMMON SHARED char$
CLS

DO
 LETTER% = 0
 INPUT "Word: ", word$           'get word to calculate
 FOR x% = 1 TO LEN(word$)        'take each letter in string
    char$ = MID$(word$, x%, 1)
    findvalue
    LETTER% = LETTER% + num%     'add values together
 NEXT x%
 PRINT LETTER%

LOOP

    SUB findvalue
   
   
    SELECT CASE char$
      CASE "A"
        num% = 26
      CASE "B"
        num% = 25
      CASE "C"
        num% = 24
      CASE "D"
        num% = 23
      CASE "E"
        num% = 22
      CASE "F"
        num% = 21
      CASE "G"
        num% = 20
      CASE "H"
        num% = 19
      CASE "I"
        num% = 18
      CASE "J"
        num% = 17
      CASE "K"
        num% = 16
      CASE "L"
        num% = 15
      CASE "M"
        num% = 14
      CASE "N"
        num% = 13
      CASE "O"
        num% = 12
      CASE "P"
        num% = 11
      CASE "Q"
        num% = 10
      CASE "R"
        num% = 9
      CASE "S"
        num% = 8
      CASE "T"
        num% = 7
      CASE "U"
        num% = 6
      CASE "V"
        num% = 5
      CASE "W"
        num% = 4
      CASE "X"
        num% = 3
      CASE "Y"
        num% = 2
      CASE "Z"
        num% = 1
      END SELECT
      
END SUB

