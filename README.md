# Rajagiri School of Engineering and Technology, Kakkanad 
## Department of Computer Science and Engineering

### CSL333: Database Management Systems Lab
### S5 CSE (KTU) 

#### Day 1 
1. Creation of a database using DDL commands and writes DQL queries to retrieve information from the database. <br/>
a. Create the following tables. <br/>
i. Table Name: Hospital <br/>
Column Name Data Type Constraint <br/>
DoctorId Varchar2(10) Primary Key <br/>
DocName Varchar2(20) <br/>
Specialization Varchar2(10) <br/>
HOD Varchar2(10) <br/>
DeptNo Varchar2(5) <br/>
HireDate Date <br/>
Sal Number(10,3) <br/>
ii. Table Name: HospitalDept <br/>
Column Name Data Type Constraint <br/>
DeptNo Varchar2 (5) Primary key <br/>
DeptName Varchar2(20) <br/>
Location Varchar2(20) <br/>
b. Add a column “Additional Qualification”to the Hospital table. The data type is character. <br/>
c. Modify the column width of the Specialization field of Hospital table. <br/>
d. Remove column Location from HospitalDept table. <br/>
e. Rename the column name Sal to Salary in Hospital table. <br/>
f. Delete the table HospitalDept. <br/>
g. Display your name and age using DUAL table. <br/>
h. Display the current system date. <br/>
i. Perform the following operations: 55-15+8*3/6 <br/>
j. Display all the tables currently available to the user. <br/>

#### Day 2 
2. Performing DML commands like Insertion, Deletion, Modifying, Altering, and Updating records based on conditions. <br/>
a. Create and insert the following values in Employee table. <br/>
EmpId EmpName Job Manager DeptNo HireDate Salary Comm <br/>
E0001 Abey Tester E0004 D004 15/12/12 30000 500 <br/>
E0002 Jesto Analyst E0001 D002 24/04/11 25000 650 <br/>
E0003 Adarsh Clerk E0004 D004 10/01/13 15000 500 <br/>
E0004 Kevin Admin E0005 D002 10/10/13 20000 1750 <br/>
E0005 Bony Manager D001 11/04/11 50000 1000 <br/>
E0006 Manu Supplier E0001 D003 19/06/13 5000 450 <br/>
b. Create and insert the following values in Department table. <br/>
DeptNo DeptName Location <br/>
D001 DeptA A block <br/>
D002 DeptB B block <br/>
D003 DeptC C block <br/>
D004 DeptD D block<br/>
c. Create a table as shown below and insert the values: <br/>
Table Name: Client <br/>
Name Data type <br/>
Cno Varchar2(6) <br/>
Name Varchar2(20) <br/>
City Varchar2(15) <br/>
PinCode Number(8) <br/>
State Varchar2(15) <br/>
Baldue Number(10,2) <br/>
d. Insert the following values into the Client table <br/>
Cno Name City Pincode State Baldue <br/>
C01 Nimmy Cochin 680324 Kerala 14000 <br/>
C02 Susan Cochin 680324 Kerala 0 <br/>
C03 Anjana Salem 680345 TamilNadu 5000 <br/>
C04 Sneha Pune 680223 Maharashtra 500 <br/>
C05 Annet Gandipuram 680321 Karnataka 7600 <br/>
C06 Ann Bombay 682111 Maharashtra 2055 <br/>
e. Display the entire contents of the tables. <br/>
f. Insert a new employee with EmpId=E0001. <br/>
g. Display the first 4 rows of the Client table. <br/>
h. Retrieve the names, Hire date and Salary of all employees. <br/>
i. List all employees whose name starts with ‘A’ or ‘K’. <br/>
j. Display the distinct cities to which the clients belong. <br/>
k. List managers hired after 2012 and whose salary is more than 17500. <br/>
l. List all employees whose name falls in the alphabetical range ‘E to L’. <br/>
m. Change the city of Client No: C03 from ‘Salem’ to ‘Delhi’. <br/>
n. Change the Commission of employee ‘Abey’ to 600. <br/>
o. List all from Client table and display in the following format: “Annet from Gandhipuram has 7600 Balance due”. <br/>
p. Display the column name ‘Baldue’ of Client table as “Due Balance” <br/>
q. List all clients who are not from ‘Kerala’. <br/>

#### Day 3 
3. Creating relationship between the databases. <br/>
a. Alter the client table to add Primary key constraint on Cno Column. <br/>
b. Create foreign key constraint on Manager and Dept. No column of Employee table. <br/>
c. Insert a new employee with DeptNo as D006. <br/>
4. Creating a database to set various constraints. <br/>
a. Add a constraint to make the Job column unique. <br/>
b. Add constraint to the Employee table to check if Comm> 400. <br/>
c. Set Salary value by default as 25000, otherwise as the user enters. <br/>
d. Remove the constraint from the column Job. <br/>
e. Display all the constraints on the Employee table. <br/>

#### Day 4 
5. Practice of SQL TCL commands like Rollback, Commit and Savepoint. <br/>
a. Delete all clients whose Baldue is 0 or below. <br/>
b. Write a query to undo the above delete query. <br/>
6. Practice of SQL DCL commands for granting and revoking user privileges. <br/>
a. Write a query to grant all privileges of client table to nearby user. <br/>
b. Write a query to grant some privileges of Employee table to nearby user. <br/>
c. Write a query to revoke all privileges of client table from the user. <br/>
d. Write a query to revoke some privileges of employees table from the user. <br/>

#### Day 5
7. Creation of Views * <br/>
a. Create a view CUST_VW of the Employee table with the following columns: <br/>
EmpId <br/>
EmpName <br/>
Job <br/>
Manager <br/>
b. Update CUST_VW by changing the Job=’Clerk’ to ‘Senior Clerk’ <br/>
c. Delete from CUST_VW the Employee-Kevin. <br/>
d. Delete the view created. <br/>
8. Implementation of Built in functions in RDBMS * <br/>
a. Find the value of 165 <br/>
b. Find the length of the string “Application” <br/>
c. What is the last date of the current month? <br/>
d. Convert the given number 65432 to $65432. Use format mask. <br/>
e. Display the current system date and time with fractional seconds with time zone. <br/>
f. Display the year of the hiring of all the employees from the Employee table. <br/>
g. Calculate the number of months the employees have been working in the Company. <br/>
h. Find the number of departments available. <br/>
i. Display the hire date of all employees in the following format:Friday, 11th August, 2017 <br/>
9. Implementation of various aggregate functions in SQL * <br/>
a. Calculate the total of Baldue from Client table. <br/>
b. Count the total records in Employee table. <br/>
c. Find the minimum and maximum Balance due from Client table. <br/>
d. Find the average salary in Employee table. <br/>

#### Day 6
10. Implementation of Order By, Group by & Having clause. * <br/>
a. Display the client names in ascending order. <br/>
b. Determine the maximum salary in each department. <br/>
c. Display the minimum salary of all departments except D001. <br/>
11. Implementation of set operators, nested queries and Join queries * <br/>
a. Display all the DeptNo available with the dept and employee tables. <br/>
b. Display all the DeptNoavailable in employee and not in dept tables. <br/>
c. Write a nested query to select the employees who have got more salary than Adarsh. <br/>
d. Write a nested query to select the employees who have less salary than any employees working in dept D004. <br/>
e. Display all employee names and salary whose salary is greater than minimum salary of the company and job title starts with A. <br/>
f. Display Employee Name and Department Name of employees whose salary is greater than 20000. <br/>
g. Display the Employee name, Job, Manager Name by implementing a left outer join. <br/>
h. Display the Employee name, Job, Manager Name by implementing a right outer join. <br/>
i. Display the Employee name, Job, Manager Name by implementing a full outer join. <br/>

#### Day 7 
12. Implementation of various control structures using PL/SQL * <br/>
a. Write a PL/SQL code block to calculate the area of a circle for a value of radius varying from 5 to 15. Store the radius and the corresponding values of calculated area in an empty table named areas, consisting of two columns radius & area. <br/>
b. Write a PL/SQL code block that will accept an account number from the user, check if the users balance is less than minimum balance, then deduct Rs.100/ -from the balance. This process is fired on the ACCOUNT table. (Exception handling in PL/SQL) <br/>

#### Day 8 
13. Creation of Procedures and Functions * <br/>
a. Create a procedure which increases the Commission of the given employee of the Employee table by 5%. <br/>
b. Create a function which returns the manager name of an employee, given the EmpId. <br/>

#### Day 9 
14. Creation of Packages * <br/>
a. Create a package which contains: <br/>
i. A procedure to hire a new employee. <br/>
ii. A function to increase the commission of the employee. <br/>
15. Creation of database Triggers and Cursors * <br/>
a. Given the tables, <br/>
MASTER (ACCNO, NAME, OPEN_DATE, BALANCE) <br/>
TRANSACTION (TACCNO, TAMOUNT, TDATE, OPERATION) <br/>
i) Create a trigger to check whether withdrawal or deposit is possible or not. Withdrawal is possible only if the minimum balance after withdrawal is greater than or equal to 1000.  <br/>
ii) Record each transaction in TRANSACTION table. Raise a trigger for each entry in the Transaction table. <br/>
iii) Update the balance in MASTER table accordingly. <br/>
b. Consider the following tables (Advanced Question) <br/>
SUPPLIERS (SuppNo, SName, SAddress, SCity, SState, SPhone, SBalance) <br/>
ORDERS (OrdNo, OrdDate, OrdSuppNo,OrdPartNo, OrdQty) <br/>
PARTS (PartNo, PName, Qty, Price) <br/>
i) Create a trigger to ensure that Supplier ‘S002’ is not to be given orders larger than 100 units of any part. <br/>
ii) Create a procedure to Ensure that there should not be more than 2 suppliers based inthe same city. Ensure that supplier is having enough balance to place the order. <br/>
c. Create a Cursor which updates the salaries of an Employee as follows. <br/>
i. If salary < 10000 then update the salary to 15000. <br/>
ii. If salary >= 10000 and < 30000 then update the salary to 35000. <br/>
iii. If salary >= 30000 and < 60000 then update the salary to 65000. <br/>
iv. Count the no: of records that have been updated <br/>
16. * <br/>

#### Day 10 
17. Practice various front-end tools and report generation. <br/>
a. Generate a report on the employee table. <br/>
b. Generate a report on the clients from outside Kerala.  <br/>

#### Day 11 
18. Structure of 'restaurants' collection: <br/>
{ <br/>
"address": { <br/>
     "building": "1007", <br/>
     "coord": [ -73.856077, 40.848447 ], <br/>
     "street": "Morris Park Ave", <br/>
     "zipcode": "10462" <br/>
  }, <br/>
  "borough": "Bronx", <br/>
  "cuisine": "Bakery", <br/>
  "grades": [ <br/>
     { "date": { "$date": 1393804800000 }, "grade": "A", "score": 2 }, <br/>
     { "date": { "$date": 1378857600000 }, "grade": "A", "score": 6 }, <br/>
     { "date": { "$date": 1358985600000 }, "grade": "A", "score": 10 }, <br/>
     { "date": { "$date": 1322006400000 }, "grade": "A", "score": 9 }, <br/>
     { "date": { "$date": 1299715200000 }, "grade": "B", "score": 14 } <br/>
  ], <br/>
  "name": "Morris Park Bake Shop", <br/>
  "restaurant_id": "30075445" <br/>
} <br/>
a. Write a MongoDB query to display all the documents in the collection restaurants. <br/>
b. Write a MongoDB query to display the fields restaurant_id, name, borough and cuisine for all the documents in the collection restaurant <br/>
c. Write a MongoDB query to display the fields restaurant_id, name, borough and cuisine, but exclude the field _id for all the documents in the collection restaurant. <br/>
d. Write a MongoDB query to display the fields restaurant_id, name, borough and zip code, but exclude the field _id for all the documents in the collection restaurant. <br/>

#### Day 12 
19. Mini project (Application Development using Oracle/ MySQL using Database <br/>
connectivity)* - group assignment <br/>
