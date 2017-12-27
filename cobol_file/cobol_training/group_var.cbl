      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GROUP-VAR-STUFF.
       DATA DIVISION.

       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  VARD PIC X(30).
       01  SETVAL PIC X(30).
       01  DATA-STRUK1.
           05 VARA PIC 99 VALUE "23".
           05 VARB PIC XX VALUE "AB".
           05 FILLER PIC X(4) VALUE " AT ".
           05 VARC PIC X(20).
           05 VARE PIC X(30).
       01  DATA-TWO-STRUK2.
           10 XVARA PIC 9(6) VALUE "123456".
           10 XVARB PIC Z(6).
           10 XVARC PIC Z(6)9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "LOCATION" TO VARC.
            DISPLAY "Hello".
            DISPLAY DATA-STRUK1.
            ACCEPT VARC.
            ACCEPT VARD.
            MOVE VARD TO VARE.
            DISPLAY DATA-STRUK1.
            DISPLAY VARD.
            MOVE "STUFF 1234" TO SETVAL.
            DISPLAY SETVAL.

            MOVE "321" TO XVARA.
            MOVE XVARA TO XVARB.
            DISPLAY XVARB.
            MOVE "8" TO XVARC.

            DISPLAY DATA-TWO-STRUK2

            STOP RUN.
       END PROGRAM GROUP-VAR-STUFF.
