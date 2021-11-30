a.  CREATE TABLE Employee (
    EmpId Varchar2(5) NOT NULL PRIMARY KEY,
    EmpName Varchar2(20),
    Job Varchar2(20),
    Manager Varchar2(7),
    DeptNo Varchar2(6),
    HireDate date,
    Salary Number(10,3),
    Comm int,
    );

    INSERT INTO Employee 
    VALUES ('E0001', 'Abey', 'Tester', 'E0004', 'D004', TO_DATE('15/12/2012', 'DD/MM/YYYY'), 30000, 500);
    INSERT INTO Employee
    VALUES ('E0002', 'Jesto', 'Analyst', 'E0001', 'D002', TO_DATE('24/04/2011', 'DD/MM/YYYY'), 25000, 650);
    INSERT INTO Employee 
    VALUES ('E0003', 'Adarsh', 'Clerk', 'E0004', 'D004', TO_DATE('10/01/2013', 'DD/MM/YYYY'), 15000, 500);
    INSERT INTO Employee 
    VALUES ('E0004', 'Kevin', 'Admin', 'E0005', 'D002', TO_DATE('10/10/2013', 'DD/MM/YYYY'), 20000, 1750);
    INSERT INTO Employee 
    VALUES ('E0005', 'Bony', 'Manager', NULL, 'D001', TO_DATE('11/04/2011', 'DD/MM/YYYY'), 50000, 1000);
    INSERT INTO Employee 
    VALUES ('E0006', 'Manu', 'Supplier', 'E0001', 'D003', TO_DATE('19/06/2013', 'DD/MM/YYYY'), 5000, 450);

b.  CREATE TABLE Department (
    DeptNo Varchar2(6) NOT NULL PRIMARY KEY,
    DeptName Varchar2(8),
    Location Varchar2(10)
    );

    INSERT INTO Department 
    VALUES ('D001', 'DeptA', 'A block');
    INSERT INTO Department 
    VALUES ('D002', 'DeptB', 'B block');
    INSERT INTO Department 
    VALUES ('D003', 'DeptC', 'C block');
    INSERT INTO Department 
    VALUES ('D004', 'DeptD', 'D block');

c.  CREATE TABLE Client (
    Cno Varchar2(6),
    Name Varchar2(20),
    City Varchar2(15),
    PinCode Number(8),
    State Varchar2(15),
    Baldue Number(10,2)
    );

d.  INSERT INTO Client
    VALUES ('C01', 'Nimmy', 'Cochin', 680324, 'Kerala', 14000);
    INSERT INTO Client 
    VALUES ('C02', 'Susan', 'Cochin', 680324, 'Kerala', 0);
    INSERT INTO Client 
    VALUES ('C03', 'Anjana', 'Salem', 680345, 'TamilNadu', 5000);
    INSERT INTO Client 
    VALUES ('C04', 'Sneha', 'Pune', 680223, 'Maharashtra', 500);
    INSERT INTO Client 
    VALUES ('C05', 'Annet', 'Gandipuram', 680321, 'Karnataka', 7600);
    INSERT INTO Client 
    VALUES ('C06', 'Ann', 'Bombay', 682111, 'Maharashtra', 2055);

e.  SELECT * 
    FROM Employee;
    SELECT * 
    FROM Department;
    SELECT * 
    FROM Client;

f.  INSERT INTO Employee (Empid) 
    VALUES ('E0001');

g.  SELECT * 
    FROM Client
    WHERE ROWNUM <= 4;

h.  SELECT EmpName, HireDate, Salary 
    FROM Employee;

i.  SELECT * 
    FROM Employee
    WHERE EmpName LIKE 'A%' OR EmpName LIKE 'K%'

j.  SELECT DISTINCT City 
    FROM Client;

k.  SELECT * 
    FROM EMPLOYEE
    WHERE HireDate > '31-Dec-2012' AND Salary > 17500

l.  SELECT * FROM Employee
    WHERE EmpName BETWEEN 'E' AND 'L';

m.  UPDATE Client
    SET City = 'Delhi'
    WHERE Cno = 'C03';

n.  UPDATE Employee
    SET Comm = 600
    WHERE EmpName = 'Abey';

o.  SELECT Name ||' from '|| City ||' has '|| Baldue ||' balance due.'
    FROM Client;



p.  SELECT Baldue AS "Due Balance"
    FROM Client;

q.  SELECT *
    FROM Client
    WHERE State != 'Kerala';
