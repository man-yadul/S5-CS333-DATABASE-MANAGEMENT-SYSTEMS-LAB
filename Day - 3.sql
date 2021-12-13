/*
3. Creating relationship between the databases.
3a. Alter the client table to add Primary key constraint on Cno Column.
3b. Create foreign key constraint on Manager and Dept. No column of Employee table.
3c. Insert a new employee with DeptNo as D006.
4. Creating a database to set various constraints.
4a. Add a constraint to make the Job column unique.
4b. Add constraint to the Employee table to check if Comm> 400.
4c. Set Salary value by default as 25000, otherwise as the user enters.
4d. Remove the constraint from the column Job.
4e. Display all the constraints on the Employee table.
*/

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
