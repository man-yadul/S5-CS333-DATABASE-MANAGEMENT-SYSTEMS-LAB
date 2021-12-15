/*
7. Creation of Views * <br/>
7a. Create a view CUST_VW of the Employee table with the following columns: 
EmpId 
EmpName 
Job 
Manager
7b. Update CUST_VW by changing the Job=’Clerk’ to ‘Senior Clerk’ 
7c. Delete from CUST_VW the Employee-Kevin. 
7d. Delete the view created. 
8. Implementation of Built in functions in RDBMS * 
8a. Find the value of 165 
8b. Find the length of the string “Application” 
8c. What is the last date of the current month? 
8d. Convert the given number 65432 to $65432. Use format mask. 
8e. Display the current system date and time with fractional seconds with time zone. 
8f. Display the year of the hiring of all the employees from the Employee table.
8g. Calculate the number of months the employees have been working in the Company.
8h. Find the number of departments available. 
8i. Display the hire date of all employees in the following format:Friday, 11th August, 2017 
9. Implementation of various aggregate functions in SQL * 
9a. Calculate the total of Baldue from Client table.
9b. Count the total records in Employee table. 
9c. Find the minimum and maximum Balance due from Client table. 
9d. Find the average salary in Employee table. 
*/

7.
a.
CREATE VIEW CUST_VW AS 
SELECT EmpId, EmpName, Job, Manager
FROM Employee;

/*
If query doesn't work, try:
SQL> connect
Enter user-name: sys as sysdba
Enter password: *****
Connected.
SQL> grant all privileges to u1903216;

Grant succeeded.

SQL> connect
Enter user-name: u1903216
Enter password: ********
Connected.
*/

b.
UPDATE CUST_VW
SET Job = 'Senior Clerk' 
WHERE Job = 'Clerk';

c.
ALTER TABLE Employee
DROP CONSTRAINT FK_EMP;

DELETE FROM CUST_VW
WHERE EmpName = 'Kevin';

d.
DROP VIEW CUST_VW;

8.
a.
SELECT POWER(16, 5)
FROM DUAL;

b.
SELECT LENGTH('Application')
FROM DUAL;

c.
SELECT LAST_DAY(SYSDATE)
FROM DUAL;

d.
SELECT TO_CHAR(65432,'$99999') 
FROM DUAL;

e.
SELECT SYSTIMESTAMP 
FROM DUAL;

f.
SELECT TO_CHAR(HireDate, 'YYYY') HireDate 
FROM Employee;

g.
SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, TO_DATE(HireDate))) 
AS HireDate 
FROM Employee;

h.
SELECT COUNT(DISTINCT(DeptName)) 
FROM Department;

i.
SELECT TO_CHAR(HireDate, 'DY, DDth MONTH, YYYY') 
FROM Employee;

9.
a.
SELECT SUM(Baldue)
FROM Client;

b.
SELECT COUNT(*) 
FROM Employee;

c.
SELECT MIN(Baldue), MAX(Baldue) 
FROM Client;

d.
SELECT AVG(Salary) 
FROM Employee;
