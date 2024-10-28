      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICOES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WS-OPCAO PIC 9(1).
       77 WS-OPERACAO PIC X(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY '***************************************************'
           DISPLAY '1 - ENTRAR | 2 - SAIR'
           DISPLAY 'ESCOLHA A OPCAO:'
           ACCEPT WS-OPCAO

           IF WS-OPCAO EQUAL 1
               DISPLAY '***********************************************'
               DISPLAY 'A - INCLUIR | B - CONSULTAR | C - EXCLUIR '
               DISPLAY 'ESCOLHA A OPERACAO:'
               ACCEPT WS-OPERACAO

               EVALUATE WS-OPERACAO
                   WHEN 'A' DISPLAY 'ENTRANDO NA OP. A'
                   WHEN 'B' DISPLAY 'ENTRANDO NA OP. B'
                   WHEN 'C' DISPLAY 'ENTRANDO NA OP. C'
                   WHEN OTHER DISPLAY 'OP. INVALIDA'
               END-EVALUATE
           ELSE IF WS-OPCAO EQUAL 2
               DISPLAY 'SAINDO...'
               EXIT PROGRAM
           ELSE
               PERFORM MAIN-PROCEDURE
           END-IF

           STOP RUN.
       END PROGRAM CONDICOES.
