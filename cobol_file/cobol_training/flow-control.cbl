      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  VAR1 PIC S9(4)V9(2) VALUE 10.50.
       01  VAR2 PIC X(80).
       01  YN PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "RUNNING MAIN".
            DISPLAY "INPUT Y/N TO RUN PROGRAM: "

            ACCEPT YN

            IF YN EQUAL "Y" THEN
                PERFORM FUNCTION-ABC
            ELSE
                PERFORM FUNCTION-XYZ

            END-IF
            STOP RUN.

       FUNCTION-ABC.
           ADD 1 TO VAR1.
           DISPLAY "THE VALUE IS " VAR1.

       FUNCTION-XYZ.
           DISPLAY "CONTENT OF VAR 2: " VAR2.

       END PROGRAM YOUR-PROGRAM-NAME.
