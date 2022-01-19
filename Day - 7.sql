/*
12. Implementation of various control structures using PL/SQL * 
a. Write a PL/SQL code block to calculate the area of a circle for a value of radius 
varying from 5 to 15. Store the radius and the corresponding values of 
calculated area in an empty table named areas, consisting of two columns 
radius & area. 
b. Write a PL/SQL code block that will accept an account number from the user, 
check if the users balance is less than minimum balance, then 
deduct Rs.100/ -from the balance. This process is fired on the ACCOUNT table. 
(Exception handling in PL/SQL) 
*/

12a.
CREATE TABLE AREAS
(
	R NUMBER(3), 
	AREA NUMBER(14, 2)
);

DECLARE
	R NUMBER(3);
	AREA NUMBER(14, 2);
	PI CONSTANT NUMBER(4, 2) := 3.14;
BEGIN
	R := 5;
	WHILE R <= 15
	LOOP
		AREA := PI * POWER(R, 2);
		INSERT INTO AREAS VALUES(R, AREA);
		R := R + 1;
	END LOOP;
END;

12b.
CREATE TABLE ACCOUNT
(
	ACCNO VARCHAR2(20),
	BALANCE NUMBER(14,3)
);

INSERT INTO ACCOUNT
VALUES('ACNO01', 1500);

INSERT INTO ACCOUNT
VALUES('ACNO02', 6600);

INSERT INTO ACCOUNT
VALUES('ACNO03', 440);

INSERT INTO ACCOUNT
VALUES('ACNO04', 960);

INSERT INTO ACCOUNT
VALUES('ACNO05', 250);

DECLARE
	ACNTNO VARCHAR2(20);
 	MINBAL NUMBER(14,3);
 	UBAL NUMBER(14,3);
	LOW_BAL EXCEPTION;
BEGIN
 	MINBAL := 500;

 	ACNTNO := '&ACNTNO';

 	SELECT BALANCE INTO UBAL
 	FROM ACCOUNT
 	WHERE ACCNO = ACNTNO;

 	IF UBAL <= MINBAL
 	THEN
		DBMS_OUTPUT.PUT_LINE('Current balance is less than minimum balance.');
		RAISE LOW_BAL;
 	ELSE
  		DBMS_OUTPUT.PUT_LINE('Valid minimum balance.');
 	END IF;
EXCEPTION
	WHEN LOW_BAL
	THEN
		UBAL := UBAL - 100;
		UPDATE ACCOUNT
  		SET BALANCE = UBAL
  		WHERE ACCNO = ACNTNO;
END;
