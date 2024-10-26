      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ITERACOES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WS-CONTADOR      PIC 9(2) VALUE ZERO.
       77 WS-CONTADOR-2    PIC 9(2) VALUES ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM 2 TIMES
               DISPLAY '***********************************************'
           END-PERFORM

           MOVE 5 TO WS-CONTADOR WS-CONTADOR-2

           PERFORM WS-CONTADOR TIMES
               DISPLAY 'CONTADOR:   ' WS-CONTADOR
               DISPLAY 'CONTADOR-2: ' WS-CONTADOR-2
               SUBTRACT 1 FROM WS-CONTADOR-2
           END-PERFORM

           PERFORM 2 TIMES
               DISPLAY '***********************************************'
           END-PERFORM

           PERFORM UNTIL WS-CONTADOR-2 > 5
               DISPLAY 'CONTADOR-2: ' WS-CONTADOR-2
               ADD 1 TO WS-CONTADOR-2
           END-PERFORM

           PERFORM 2 TIMES
               DISPLAY '***********************************************'
           END-PERFORM

           PERFORM VARYING
               WS-CONTADOR-2 FROM 1 BY 2 UNTIL WS-CONTADOR-2 > 10
               DISPLAY 'CONTADOR-2: ' WS-CONTADOR-2
           END-PERFORM

           PERFORM 2 TIMES
               DISPLAY '***********************************************'
           END-PERFORM

           STOP RUN.
       END PROGRAM ITERACOES.
