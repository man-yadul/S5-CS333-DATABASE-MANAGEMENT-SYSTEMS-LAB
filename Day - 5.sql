7a. 
CREATE VIEW CUST_VW 
AS SELECT EmpId, EmpName, Job, Manager 
FROM Employee;

7b.
UPDATE CUST_VW 
SET Job = 'Senior Clerk' 
WHERE Job = 'Clerk';

7c.
DELETE FROM CUST_VW
WHERE EmpName = 'Kevin';

7d.
DROP VIEW CUST_VW;

8a. 
SELECT POWER(16, 5)
FROM DUAL;

8b. 
SELECT LENGTH('Application');

8c. 
SELECT LAST_DAY(SYSDATE)
FROM DUAL;

8d. 
SELECT TO_CHAR(65432,'$99999') 
FROM DUAL;

8e. 
SELECT SYSTIMESTAMP 
FROM DUAL;

8f. 
SELECT TO_CHAR(HireDate, 'YYYY') HireDate 
FROM Employee;

8g. 
SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, TO_DATE(HireDate))) 
AS HireDate 
FROM Employee;

8h. 
SELECT COUNT(DISTINCT(DeptName)) 
FROM Dept;

8i.
SELECT TO_CHAR(HireDate, 'DY, DDth MONTH, YYYY') 
FROM Employee;

9a. 
SELECT SUM(Baldue)
FROM Client;

9b. 
SELECT COUNT(*) 
FROM Employee;

9c. 
SELECT MIN(Baldue), MAX(Baldue) 
FROM Client;

9d. 
SELECT AVG(Salary) 
FROM Employee;
