3a.
ALTER TABLE Employee
ADD FOREIGN KEY (Manager) REFERENCES Employee(EmpID);

3b.
ALTER TABLE Employee
ADD FOREIGN KEY (DeptNo) REFERENCES Department(DeptNo);

3c.
INSERT INTO Employee (EmpID, DeptNo)
VALUES (E0008, D006);

4a.
ALTER TABLE Employee
ADD UNIQUE (Job);

4b.
ALTER TABLE Employee
ADD CHECK (Comm > 400);

4c.
ALTER TABLE Employee
MODIFY Salary DEFAULT 25000;

4d.
ALTER TABLE Employee
DROP UNIQUE (Job);

4e.
SELECT * 
FROM USER_CONSTRAINTS
WHERE table_name = 'Employee';