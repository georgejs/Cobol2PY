      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VNDBLD02.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *     COPY "SLVND01.cbl"
       DATA DIVISION.
       FILE SECTION.
      *     COPY "fdvnd01.cbl"
       WORKING-STORAGE SECTION.
            COPY "data_add.cbl"
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello World".
            MOVE "YO YOU" TO DATASTAT-1.
            DISPLAY DATASTAT-1.
            STOP RUN.
       END PROGRAM VNDBLD02.
