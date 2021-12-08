3a.
ALTER TABLE Client
ADD PRIMARY KEY (Cno);

3b.
ALTER TABLE Employee
ADD CONSTRAINT FK_EMP 
FOREIGN KEY (Manager) REFERENCES Employee(EmpID);

ALTER TABLE Employee
ADD CONSTRAINT FK_DEPT
ADD FOREIGN KEY (DeptNo) REFERENCES Department(DeptNo);

3c.
INSERT INTO Department
VALUES ('D006', 'DeptF', 'F block');

INSERT INTO Employee (EmpID, DeptNo)
VALUES ('E0008', 'D006');

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
WHERE table_name = 'EMPLOYEE';
