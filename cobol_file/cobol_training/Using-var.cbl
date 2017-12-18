      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Learning-var.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  First-Number                PICTURE 99.
       01  Second-Number               PICTURE 99.
       01  Third-Number                PICTURE 999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter First Number".
            ACCEPT First-Number.
            DISPLAY "Enter Second Number".
            ACCEPT Second-Number.
            COMPUTE Third-Number = First-Number + Second-Number
            DISPLAY "Sum of Number 1 and 2 is :".
            DISPLAY Third-Number.
            STOP RUN.
       END PROGRAM Learning-var.
