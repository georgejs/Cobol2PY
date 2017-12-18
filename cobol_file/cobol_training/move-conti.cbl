      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-CONT-2WAYS-TO-ADD.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 VAR1 PIC 99.
       01 VAR2 PIC 9(18) VALUE 251685978341527864.
       01 VAR3 PIC X(200).
       01 VAR4 PIC X(120) VALUE "initially setting the value
      -  "of VAR to something long with out being in PROCEDURE".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Running Program"
            MOVE 2 TO VAR1.
            MOVE "This is a very long string that will exce
      -     "ed the length of one line make note that the
      -     "- is in colum 7 indcating that is a cont" TO VAR3.
            STOP RUN.
       END PROGRAM MOVE-CONT-2WAYS-TO-ADD.
