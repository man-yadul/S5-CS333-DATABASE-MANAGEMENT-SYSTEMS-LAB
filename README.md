# Rajagiri School of Engineering and Technology, Kakkanad 
## Department of Computer Science and Engineering  

### CS333: Application Software Development Lab–2021 
### S5 CSE (KTU) 

#### Day 1 
1. Creation of a database using DDL commands and writes DQL queries to retrieve information from the database. 
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

#### Day 2 
2. Performing DML commands like Insertion, Deletion, Modifying, Altering, and Updating records based on conditions. 
a. Create and insert the following values in Employee table. 
EmpId EmpName Job Manager DeptNo HireDate Salary Comm 
E0001 Abey Tester E0004 D004 15/12/12 30000 500 
E0002 Jesto Analyst E0001 D002 24/04/11 25000 650 
E0003 Adarsh Clerk E0004 D004 10/01/13 15000 500 
E0004 Kevin Admin E0005 D002 10/10/13 20000 1750 
E0005 Bony Manager D001 11/04/11 50000 1000 
E0006 Manu Supplier E0001 D003 19/06/13 5000 450 
b. Create and insert the following values in Department table. 
DeptNo DeptName Location 
D001 DeptA A block 
D002 DeptB B block 
D003 DeptC C block 
D004 DeptD D block
c. Create a table as shown below and insert the values: 
Table Name: Client 
Name Data type 
Cno Varchar2(6) 
Name Varchar2(20) 
City Varchar2(15) 
PinCode Number(8) 
State Varchar2(15) 
Baldue Number(10,2) 
d. Insert the following values into the Client table 
Cno Name City Pincode State Baldue 
C01 Nimmy Cochin 680324 Kerala 14000 
C02 Susan Cochin 680324 Kerala 0 
C03 Anjana Salem 680345 TamilNadu 5000 
C04 Sneha Pune 680223 Maharashtra 500 
C05 Annet Gandipuram 680321 Karnataka 7600 
C06 Ann Bombay 682111 Maharashtra 2055 
e. Display the entire contents of the tables. 
f. Insert a new employee with EmpId=E0001. 
g. Display the first 4 rows of the Client table. 
h. Retrieve the names, Hire date and Salary of all employees. 
i. List all employees whose name starts with ‘A’ or ‘K’. 
j. Display the distinct cities to which the clients belong. 
k. List managers hired after 2012 and whose salary is more than 17500. 
l. List all employees whose name falls in the alphabetical range ‘E to L’. 
m. Change the city of Client No: C03 from ‘Salem’ to ‘Delhi’. 
n. Change the Commission of employee ‘Abey’ to 600. 
o. List all from Client table and display in the following format: “Annet from Gandhipuram has 7600 Balance due”. 
p. Display the column name ‘Baldue’ of Client table as “Due Balance” 
q. List all clients who are not from ‘Kerala’. 

#### Day 3 
3. Creating relationship between the databases. 
a. Alter the client table to add Primary key constraint on Cno Column. 
b. Create foreign key constraint on Manager and Dept. No column of Employee table. 
c. Insert a new employee with DeptNo as D006. 
4. Creating a database to set various constraints. 
a. Add a constraint to make the Job column unique. 
b. Add constraint to the Employee table to check if Comm> 400. 
c. Set Salary value by default as 25000, otherwise as the user enters. 
d. Remove the constraint from the column Job. 
e. Display all the constraints on the Employee table. 

#### Day 4 
5. Practice of SQL TCL commands like Rollback, Commit and Savepoint. 
a. Delete all clients whose Baldue is 0 or below. 
b. Write a query to undo the above delete query. 
6. Practice of SQL DCL commands for granting and revoking user privileges. 
a. Write a query to grant all privileges of client table to nearby user. 
b. Write a query to grant some privileges of Employee table to nearby user. 
c. Write a query to revoke all privileges of client table from the user. 
d. Write a query to revoke some privileges of employees table from the user. 

#### Day 5
7. Creation of Views * 
a. Create a view CUST_VW of the Employee table with the following columns: 
EmpId 
EmpName 
Job 
Manager 
b. Update CUST_VW by changing the Job=’Clerk’ to ‘Senior Clerk’ 
c. Delete from CUST_VW the Employee-Kevin. 
d. Delete the view created. 
8. Implementation of Built in functions in RDBMS * 
a. Find the value of 165 
b. Find the length of the string “Application” 
c. What is the last date of the current month? 
d. Convert the given number 65432 to $65432. Use format mask. 
e. Display the current system date and time with fractional seconds with time zone. 
f. Display the year of the hiring of all the employees from the Employee table. 
g. Calculate the number of months the employees have been working in the Company. 
h. Find the number of departments available. 
i. Display the hire date of all employees in the following format:Friday, 11th August, 2017 
9. Implementation of various aggregate functions in SQL * 
a. Calculate the total of Baldue from Client table. 
b. Count the total records in Employee table. 
c. Find the minimum and maximum Balance due from Client table. 
d. Find the average salary in Employee table. 

#### Day 6
10. Implementation of Order By, Group by & Having clause. * 
a. Display the client names in ascending order. 
b. Determine the maximum salary in each department. 
c. Display the minimum salary of all departments except D001. 
11. Implementation of set operators, nested queries and Join queries * 
a. Display all the DeptNo available with the dept and employee tables. 
b. Display all the DeptNoavailable in employee and not in dept tables. 
c. Write a nested query to select the employees who have got more salary than Adarsh. 
d. Write a nested query to select the employees who have less salary than any employees working in dept D004. 
e. Display all employee names and salary whose salary is greater than minimum salary of the company and job title starts with A. 
f. Display Employee Name and Department Name of employees whose salary is greater than 20000. 
g. Display the Employee name, Job, Manager Name by implementing a left outer join. 
h. Display the Employee name, Job, Manager Name by implementing a right outer join. 
i. Display the Employee name, Job, Manager Name by implementing a full outer join. 

#### Day 7  
12. Implementation of various control structures using PL/SQL * 
a. Write a PL/SQL code block to calculate the area of a circle for a value of radius varying from 5 to 15. Store the radius and the corresponding values of calculated area in an empty table named areas, consisting of two columns radius & area. 
b. Write a PL/SQL code block that will accept an account number from the user, check if the users balance is less than minimum balance, then deduct Rs.100/ -from the balance. This process is fired on the ACCOUNT table. (Exception handling in PL/SQL) 

#### Day 8 
13. Creation of Procedures and Functions * 
a. Create a procedure which increases the Commission of the given employee of the Employee table by 5%. 
b. Create a function which returns the manager name of an employee, given the EmpId. 

#### Day 9 
14. Creation of Packages * 
a. Create a package which contains: 
i. A procedure to hire a new employee. 
ii. A function to increase the commission of the employee. 

15. Creation of database Triggers and Cursors * 
a. Given the tables, 
MASTER (ACCNO, NAME, OPEN_DATE, BALANCE) 
TRANSACTION (TACCNO, TAMOUNT, TDATE, OPERATION) 
i) Create a trigger to check whether withdrawal or deposit is possible or not. Withdrawal is possible only if the minimum balance after withdrawal is greater than or equal to 1000.  
ii) Record each transaction in TRANSACTION table. Raise a trigger for each entry in the Transaction table. 
iii) Update the balance in MASTER table accordingly. 
b. Consider the following tables (Advanced Question) 
SUPPLIERS (SuppNo, SName, SAddress, SCity, SState, SPhone, SBalance) 
ORDERS (OrdNo, OrdDate, OrdSuppNo,OrdPartNo, OrdQty) 
PARTS (PartNo, PName, Qty, Price) 
i) Create a trigger to ensure that Supplier ‘S002’ is not to be given orders larger than 100 units of any part. 
ii) Create a procedure to Ensure that there should not be more than 2 suppliers based inthe same city. Ensure that supplier is having enough balance to place the order. 
c. Create a Cursor which updates the salaries of an Employee as follows. 
i. If salary < 10000 then update the salary to 15000. 
ii. If salary >= 10000 and < 30000 then update the salary to 35000. 
iii. If salary >= 30000 and < 60000 then update the salary to 65000. 
iv. Count the no: of records that have been updated 
16. * 

#### Day 10 
17. Practice various front-end tools and report generation. 
a. Generate a report on the employee table. 
b. Generate a report on the clients from outside Kerala.  

#### Day 11 
18. Structure of 'restaurants' collection: 
{ 
"address": { 
     "building": "1007", 
     "coord": [ -73.856077, 40.848447 ], 
     "street": "Morris Park Ave", 
     "zipcode": "10462" 
  }, 
  "borough": "Bronx", 
  "cuisine": "Bakery", 
  "grades": [ 
     { "date": { "$date": 1393804800000 }, "grade": "A", "score": 2 }, 
     { "date": { "$date": 1378857600000 }, "grade": "A", "score": 6 }, 
     { "date": { "$date": 1358985600000 }, "grade": "A", "score": 10 }, 
     { "date": { "$date": 1322006400000 }, "grade": "A", "score": 9 }, 
     { "date": { "$date": 1299715200000 }, "grade": "B", "score": 14 } 
  ], 
  "name": "Morris Park Bake Shop", 
  "restaurant_id": "30075445" 
} 
a. Write a MongoDB query to display all the documents in the collection restaurants. 
b. Write a MongoDB query to display the fields restaurant_id, name, borough and cuisine for all the documents in the collection restaurant 
c. Write a MongoDB query to display the fields restaurant_id, name, borough and cuisine, but exclude the field _id for all the documents in the collection restaurant. 
d. Write a MongoDB query to display the fields restaurant_id, name, borough and zip code, but exclude the field _id for all the documents in the collection restaurant. 

#### Day 12 
19. Mini project (Application Development using Oracle/ MySQL using Database 
connectivity)* - group assignment 
