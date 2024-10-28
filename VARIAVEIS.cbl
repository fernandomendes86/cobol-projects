      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVEIS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WS-CONTADOR       PIC 9(04)V9(2).
       01 WS-ENDERECO.
           03 WS-LOGRADOURO PIC X(20).
           03 WS-CEP        PIC 9(08).
       77 WS-VALOR          PIC S9(9)V9(2).


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 10.21 TO WS-CONTADOR.
            MOVE "SW" TO WS-LOGRADOURO.
            MOVE 70680000 TO WS-CEP.
            MOVE -2000.00 TO WS-VALOR;



            DISPLAY "CONTADOR: " WS-CONTADOR.
            DISPLAY "ENDERECO: " WS-ENDERECO.
            DISPLAY 'VALOR: ' WS-VALOR.

            STOP RUN.
       END PROGRAM VARIAVEIS.
