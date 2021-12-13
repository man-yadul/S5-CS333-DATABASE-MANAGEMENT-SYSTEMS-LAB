/*
Creation of a database using DDL commands and writes DQL queries to retrieve information from the database.
a. Create the following tables.
i. Table Name: Hospital
Column Name Data Type Constraint
DoctorId Varchar2(10) Primary Key
DocName Varchar2(20)
Specialization Varchar2(10)
HOD Varchar2(10)
DeptNo Varchar2(5)
HireDate Date
Sal Number(10,3)
ii. Table Name: HospitalDept
Column Name Data Type Constraint
DeptNo Varchar2 (5) Primary key
DeptName Varchar2(20)
Location Varchar2(20)
b. Add a column “Additional Qualification”to the Hospital table. The data type is character.
c. Modify the column width of the Specialization field of Hospital table.
d. Remove column Location from HospitalDept table.
e. Rename the column name Sal to Salary in Hospital table.
f. Delete the table HospitalDept.
g. Display your name and age using DUAL table.
h. Display the current system date.
i. Perform the following operations: 55-15+8*3/6
j. Display all the tables currently available to the user.
*/

a.  (i)     CREATE TABLE Hospital (
            DoctorId Varchar2(10) PRIMARY KEY,
            DocName Varchar2(20),
            Specialization Varchar2(10),
            HOD Varchar2(10),
            DeptNo Varchar2(5),
            HireDate Date,
            Sal Number(10,3)
            );

    (ii)    CREATE TABLE HospitalDept (
            DeptNo Varchar2(5) PRIMARY KEY,
            DeptName Varchar2(20),
            Location Varchar2(20)
            );

b.  ALTER TABLE Hospital 
    ADD AdditionalQualification Varchar2(20);

c.  ALTER TABLE Hospital 
    MODIFY Specialization Varchar2(25);

d.  ALTER TABLE HospitalDept 
    DROP COLUMN Location;

e.  ALTER TABLE Hospital 
    RENAME COLUMN Sal TO Salary;

f.  DROP TABLE HospitalDept;

g.  SELECT 'Yadul', '20' 
    FROM Dual;

h.  SELECT Sysdate AS System_date 
    FROM Dual;

i.  SELECT 55-15+8*3/6 
    FROM Dual;

j.  SELECT table_name 
    FROM user_tables;
