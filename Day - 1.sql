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

