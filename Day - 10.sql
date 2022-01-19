/*
17. Practice various front-end tools and report generation. 
a. Generate a report on the employee table. 
b. Generate a report on the clients from outside Kerala. 
*/

SET LINESIZE 100
SET PAGESIZE 15

-- 17a.
TTITLE CENTER 'EMPLOYEE REPORT' SKIP 1-
CENTER '**********************' SKIP 2;
BTITLE CENTER 'END OF REPORT';
SPOOL 'D:\1. FILES\S5\DBMS LAB\EMP_REPORT.TXT';
SELECT * FROM EMPLOYEE;
SPOOL OFF;

TTITLE OFF;
BTITLE OFF;
CLEAR COLUMN;

-- 17b.
TTITLE CENTER 'CLIENT REPORT' SKIP 1-
CENTER '***************' SKIP 2;
BTITLE CENTER 'END OF REPORT';
SPOOL 'D:\1. FILES\S5\DBMS LAB\CLIENT_REPORT.TXT';
SELECT * FROM CLIENT
WHERE STATE != 'Kerala';
SPOOL OFF;

TTITLE OFF;
BTITLE OFF;
CLEAR COLUMN;
