0 REM TBASIC test suite

9 LUATRACEON

10 REM IF test
20 temp = FALSE
30 IF temp == TRUE THEN ABORTM "IF STATEMENT FAILED -- EXPECTED FALSE, GOT TRUE"
40 IF temp == FALSE THEN PRINT "IF STATEMENT OKAY"

50 REM math test
60 round_1 = 3.89
61 round_2 = -4.12
70 IF ROUND(round_1) <> 4 THEN ABORTM "ROUND STATEMENT FAILED -- EXPECTED 4, GOT " ; ROUND round_1
80 IF ROUND(round_2) == -4 THEN PRINT "ROUND STATEMENT OKAY"

90 REM substring test
100 string = "SMOOTH MCGROOVE IS SMOOTH AND GROOVY"
110 IF LEFT(string, 5) <> "SMOOT" THEN ABORTM "LEFT STATEMENT FAILED -- EXPECTED 'SMOOT', GOT " ; LEFT(string, 5)
120 IF RIGHT(string, 4) <> "OOVY" THEN ABORTM "RIGHT STATEMENT FAILED -- EXPECTED 'OOVY', GOT " ; RIGHT(string, 4)
130 IF MID(string, 8, 15) <> "MCGROOVE" THEN ABORTM "MID STATEMENT FAILED -- EXPECTED 'MCGROOVE', GOT" ; MID(string, 8, 15)
140 IF LEN(string) <> 36 THEN ABORTM "LEN STATEMENT FAILED"
150 PRINT "LENGTH OF STRING '" ; string ; "' IS " ; LEN(string)
160 PRINT "LEFT/RIGHT/MID STATEMENT OKAY"

170 REM max/min test
180 IF MAX(-54,-76,-4,-564,-1,-7664) <> -1 THEN ABORTM "MAX STATEMENT FAILED -- EXPECTED '-1', GOT " ; MAX(-54,-76,-4,-564,-1,-7664)
190 IF MIN(-54,-76,-4,-564,-1,-7664) <> -7664 THEN ABORTM "MIN STATEMENT FAILED -- EXPECTED '-7664', GOT " ; MIN(-54,-76,-4,-564,-1,-7664)
200 PRINT "MAX/MIN STATEMENT OKAY"