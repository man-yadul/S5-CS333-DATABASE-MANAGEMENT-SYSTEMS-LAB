/*
5. Practice of SQL TCL commands like Rollback, Commit and Savepoint. 
  5a. Delete all clients whose Baldue is 0 or below.
  5b. Write a query to undo the above delete query.
6. Practice of SQL DCL commands for granting and revoking user privileges.
  6a. Write a query to grant all privileges of client table to nearby user.
  6b. Write a query to grant some privileges of Employee table to nearby user.
  6c. Write a query to revoke all privileges of client table from the user.
  6d. Write a query to revoke some privileges of employees table from the user.
*/

5a.
SAVEPOINT A;

DELETE FROM Client 
WHERE Baldue <= 0;

5b.
ROLLBACK TO A;

6a.
GRANT ALL ON Client TO U1903215;

6b.
GRANT SELECT ON Employee TO U1903215;

6c.
REVOKE ALL ON Client FROM U1903215;

6d.
REVOKE SELECT ON Employee FROM U1903215;
