/*
13. Creation of Procedures and Functions
a. Create a procedure which increases the Commission of the given employee of 
the Employee table by 5%. 
b. Create a function which returns the manager name of an employee, given the 
EmpId. 
*/

-- 13a.
DECLARE
	EMPLID EMPLOYEE.EMPID%TYPE;
	A EMPLOYEE.COMM%TYPE;
	B EMPLOYEE.COMM%TYPE;

PROCEDURE INCCOMMISSION(X IN NUMBER, Y OUT NUMBER)
IS
BEGIN
	Y := X + X * 5 / 100;
END;

BEGIN
	EMPLID := '&EMPLID';

	SELECT COMM INTO A
	FROM EMPLOYEE
	WHERE EMPID = EMPLID;

	INCCOMMISSION(A, B);

	UPDATE EMPLOYEE
	SET COMM = B
	WHERE EMPID = EMPLID;

	DBMS_OUTPUT.PUT_LINE('UPDATED COMMISSION OF EMPLOYEE WITH EMPID ' || EMPLID || ' AND COMMISSION IS : ' || B);
END;

-- 13b.
DECLARE
	EMPLID EMPLOYEE.EMPID%TYPE;
	MGR VARCHAR2(5);
	NAM EMPLOYEE.EMPNAME%TYPE;

FUNCTION MANAGERNAME(X IN VARCHAR2)
RETURN VARCHAR2
IS
	NAME VARCHAR2(5);
BEGIN
	SELECT MANAGER INTO NAME
	FROM EMPLOYEE
	WHERE EMPID = X;
	RETURN NAME;
END;

BEGIN
	EMPLID := '&EMPLID';
	MGR := MANAGERNAME(EMPLID);

	SELECT EMPNAME INTO NAM
	FROM EMPLOYEE
	WHERE EMPID = MGR;

	DBMS_OUTPUT.PUT_LINE('MANAGER NAME IS :' || NAM);
END;
