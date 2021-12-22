/*
Implementation of Order By, Group by & Having clause. *
10a. Display the client names in ascending order.
10b. Determine the maximum salary in each department.
10c. Display the minimum salary of all departments except D001.
Implementation of set operators, nested queries and Join queries *
11a. Display all the DeptNo available with the dept and employee tables.
11b. Display all the DeptNoavailable in employee and not in dept tables.
11c. Write a nested query to select the employees who have got more salary than Adarsh.
11d. Write a nested query to select the employees who have less salary than any employees working in dept D004.
11e. Display all employee names and salary whose salary is greater than minimum salary of the company and job title starts with A.
11f. Display Employee Name and Department Name of employees whose salary is greater than 20000.
11g. Display the Employee name, Job, Manager Name by implementing a left outer join.
11h. Display the Employee name, Job, Manager Name by implementing a right outer join.
11i. Display the Employee name, Job, Manager Name by implementing a full outer join.
*/

10a.
SELECT Name
FROM Client 
ORDER BY Name;

10b.
SELECT DeptNo, MAX(Salary)
FROM Employee
GROUP BY DeptNo;

10c.
SELECT DeptNo, MIN(Salary)
FROM Employee
WHERE DeptNo != 'D001'
GROUP BY DeptNo;

11a.
SELECT DeptNo
FROM Employee
UNION ALL
SELECT DeptNo
FROM Department
ORDER BY DeptNo;

11b.
SELECT DeptNo
FROM Employee
WHERE DeptNo NOT IN (
    SELECT DeptNo
    FROM Department
);

11c.
SELECT *
FROM Employee
WHERE Salary > (
    SELECT Salary
    FROM Employee
    WHERE EmpName = 'Adarsh'
);

11d.
SELECT *
FROM Employee
WHERE Salary < ANY (
    SELECT Salary
    FROM Employee
    WHERE DeptNo = 'D004'
);

11e.
SELECT EmpName, Salary
FROM Employee
WHERE Salary > (
    SELECT MIN(Salary)
    FROM Employee
    WHERE Job LIKE 'A%'
);

11f.
SELECT * 
FROM Employee
JOIN Department ON Employee.DeptNo = Department.DeptNo
WHERE Salary > 20000;

11g.
SELECT E.EmpName, E.Job, M.EmpName AS ManagerName
FROM Employee E
LEFT OUTER JOIN Employee M ON E.Manager = M.EmpId;

11h.
SELECT E.EmpName, E.Job, M.EmpName AS ManagerName
FROM Employee E
RIGHT OUTER JOIN Employee M ON E.Manager = M.EmpId;

11i.
SELECT E.EmpName, E.Job, M.EmpName AS ManagerName
FROM Employee E
FULL OUTER JOIN Employee M ON E.Manager = M.EmpId;
