CLS
 'PROGRAM Bale Sorter  
'PROGRAMMER Rhett Garber   DATE: 1-7-96...1-8-96
'This program tries all possible combinations of weights of the hay bales
'using multiple FOR loops.
' This is for a problem of the week given by Mr. Saathoff during Geometry    
' class. I was supposed to guess and check. Arn't Computers wonderful.

FOR X = 50 TO 65 STEP .5   'I Assumed the weight of a bale to be about 50 to 65
 BLE1 = X                  'bale one
 FOR J = 50 TO 65 STEP .5
  BLE2 = J                    'etc. etc.
  FOR I = 50 TO 65 STEP .5
   BLE3 = I
   FOR Y = 50 TO 65 STEP .5
     BLE4 = Y
     FOR B = 50 TO 65 STEP .5
        BLE5 = B
         
          
          BLE12 = BLE1 + BLE2   'adds the bales together
          BLE13 = BLE1 + BLE3
          BLE14 = BLE1 + BLE4
          BLE15 = BLE1 + BLE5
          BLE23 = BLE2 + BLE3
          BLE24 = BLE2 + BLE4
          BLE25 = BLE2 + BLE5
          BLE34 = BLE3 + BLE4
          BLE35 = BLE3 + BLE5
          BLE45 = BLE4 + BLE5
        
                
                 
                  
                   IF BLE45 = 110 OR BLE45 = 112 OR BLE45 = 113 OR
                   BLE45 = 114 OR BLE45 = 115 OR BLE45 = 116 OR BLE45 = 117
                   OR BLE45 = 118 OR BLE45 = 120 OR BLE45 = 121 THEN
                    PRINT BLE45            'checks to see if it's one of the
                                           'weights
                  IF BLE35 = 110 OR BLE35 = 112 OR BLE35 = 113 OR BLE35 = 114
                  OR BLE35 = 115 OR BLE35 = 116 OR BLE35 = 117 OR BLE35 = 118
                  OR BLE35 = 120 OR BLE35 = 121 THEN
                   PRINT BLE35;

                 IF BLE34 = 110 OR BLE34 = 112 OR BLE34 = 113 OR BLE34 = 114
                 OR BLE34 = 115 OR BLE34 = 116 OR BLE34 = 117 OR BLE34 = 118
                 OR BLE34 = 120 OR BLE34 = 121 THEN
                  PRINT BLE34;

                IF BLE25 = 110 OR BLE25 = 112 OR BLE25 = 113 OR BLE25 = 114
                OR BLE25 = 115 OR BLE25 = 116 OR BLE25 = 117 OR BLE25 = 118
                OR BLE25 = 120 OR BLE25 = 121 THEN
                 PRINT BLE25;

               IF BLE24 = 110 OR BLE24 = 112 OR BLE24 = 113 OR BLE24 = 114
               OR BLE24 = 115 OR BLE24 = 116 OR BLE24 = 117 OR BLE24 = 118 OR
               BLE24 = 120 OR BLE24 = 121 THEN
                PRINT BLE24;

              IF BLE23 = 110 OR BLE23 = 112 OR BLE23 = 113 OR BLE23 = 114 OR
              BLE23 = 115 OR BLE23 = 116 OR BLE23 = 117 OR BLE23 = 118 OR
              BLE23 = 120 OR BLE23 = 121 THEN
               PRINT BLE23;

             IF BLE15 = 110 OR BLE15 = 112 OR BLE15 = 113 OR BLE15 = 114 OR
             BLE15 = 115 OR BLE15 = 116 OR BLE15 = 117 OR BLE15 = 118 OR BLE15
             = 120 OR BLE15 = 121 THEN
              PRINT BLE15;

            IF BLE14 = 110 OR BLE14 = 112 OR BLE14 = 113 OR BLE14 = 114 OR
            BLE14 = 115 OR BLE14 = 116 OR BLE14 = 117 OR BLE14 = 118 OR BLE14
            = 120 OR BLE14 = 121 THEN
             PRINT BLE14;

           IF BLE13 = 110 OR BLE13 = 112 OR BLE13 = 113 OR BLE13 = 114 OR
           BLE13 = 115 OR BLE13 = 116 OR BLE13 = 117 OR BLE13 = 118 OR BLE13
           = 120 OR BLE13 = 121 THEN
            PRINT BLE13;

          IF BLE12 = 110 OR BLE12 = 112 OR BLE12 = 113 OR BLE12 = 114 OR BLE12
          = 115 OR BLE12 = 116 OR BLE12 = 117 OR BLE12 = 118 OR BLE12 = 120 OR
          BLE12 = 121 THEN
          BEEP
          BEEP
          BEEP
          LPRINT BLE1;
          LPRINT BLE2;
          LPRINT BLE3;   'prints the result on my printer
          LPRINT BLE4;
          LPRINT BLE5;

          
          
                   END IF
                  END IF
                 END IF
                END IF
               END IF
              END IF
             END IF
            END IF
           END IF
          END IF
         
        
         
         NEXT B
         NEXT Y
         NEXT I
         NEXT J
         NEXT X
END

