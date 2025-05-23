CREATE DATABASE HELLO16;
USE HELLO16;

CREATE TABLE PRODUCTS(
	ID INT,
    NAME VARCHAR(20),
    PRICE INT,
    MARKS INT
);
INSERT INTO Products VALUES
(1, 'Pen', 10.00, 100),
(2, 'Notebook', 25.00, 50),
(3, 'Pencil', 5.00, 200),
(4, 'Eraser', 3.00, 300),
(5, 'Marker', 15.00, 80);

SELECT *,PRICE+PRICE*0.12 AS TOTAL_VALUE 
FROM PRODUCTS;
SELECT *,PRICE-5 AS DISCOUNTED_PRICE 
FROM PRODUCTS;
SELECT *,PRICE*MARKS AS TOTAL_VALUE
FROM PRODUCTS;
SELECT *,PRICE*10 AS PRICE_FOR_10_UNITS
FROM PRODUCTS;
SELECT * FROM PRODUCTS WHERE MARKS % 50 != 0;
SELECT * FROM PRODUCTS;
SET SQL_SAFE_UPDATES = 0;
UPDATE PRODUCTS SET MARKS = MARKS+2;
SELECT * FROM PRODUCTS;
UPDATE PRODUCTS SET PRICE = PRICE - 5;
SELECT * FROM PRODUCTS;
UPDATE PRODUCTS SET MARKS = MARKS*2
WHERE NAME = "ERASER";
SELECT * FROM PRODUCTS;

UPDATE PRODUCTS SET MARKS = MARKS/2
WHERE NAME = "MARKER";
SELECT * FROM PRODUCTS;
DELETE FROM PRODUCTS
WHERE MARKS<100;
SELECT * FROM PRODUCTS;

CREATE TABLE STUDENTMARKS(
	ID INT,
    NAME VARCHAR(30),
    SUBJECT VARCHAR(10),
    MARKS INT
);

INSERT INTO STUDENTMARKS VALUES
(1, 'Alice', 'Math', 95),
(2, 'Bob', 'Math', 76),
(3, 'Charlie', 'Math', 59),
(4, 'Diana', 'Math', 88),
(5, 'Eve', 'Math', 40),
(6, 'Frank', 'Math', 95);

SELECT * FROM STUDENTMARKS WHERE MARKS > 80;
SELECT * FROM STUDENTMARKS WHERE MARKS >= 60;
SELECT * FROM STUDENTMARKS WHERE MARKS < 50;
SELECT * FROM STUDENTMARKS WHERE MARKS = 95;
SELECT * FROM STUDENTMARKS WHERE MARKS != 95;
SELECT * FROM STUDENTMARKS WHERE MARKS <= 60;

UPDATE STUDENTMARKS SET MARKS = MARKS + MARKS*0.10
WHERE MARKS < 50;
UPDATE STUDENTMARKS SET MARKS = MARKS + 5
WHERE MARKS < 60;
SELECT * FROM STUDENTMARKS;
UPDATE STUDENTMARKS SET MARKS = MARKS+2
WHERE MARKS > 90;
SELECT * FROM STUDENTMARKS;

SELECT * FROM STUDENTMARKS;
DELETE FROM STUDENTMARKS
WHERE MARKS < 50;
SELECT * FROM STUDENTMARKS;
DELETE FROM STUDENTMARKS
WHERE MARKS <= 60;
SELECT * FROM STUDENTMARKS;
DELETE FROM STUDENTMARKS
WHERE MARKS > 90;
SELECT * FROM STUDENTMARKS;
DELETE FROM STUDENTMARKS
WHERE MARKS = 76;
SELECT * FROM STUDENTMARKS;

CREATE TABLE EMPLOYEES(
	ID INT,
    NAME VARCHAR(30),
    DEPARTMENT VARCHAR(10),
    SALARY INT,
    ISACTIVE BOOL
);
INSERT INTO EMPLOYEES VALUES 
(1,"ALICE","IT",30000,TRUE),
(2,"BOB","IT",35000,TRUE),
(3,"JOHN","HR",30000,FALSE),
(4,"JACK","FINANCE",45000,TRUE),
(5,"EVE","FINANCE",40000,FALSE);

SELECT * FROM EMPLOYEES 
WHERE DEPARTMENT = "IT" AND SALARY > 30000;
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT = "HR" OR SALARY < 35000;
SELECT * FROM EMPLOYEES
WHERE NOT DEPARTMENT = "HR";
SELECT * FROM EMPLOYEES
WHERE (DEPARTMENT = "FINANCE" OR SALARY >30000) AND ISACTIVE = TRUE;

UPDATE EMPLOYEES
SET SALARY = SALARY + 2000
WHERE ISACTIVE = TRUE AND SALARY < 50000 AND DEPARTMENT = "IT";
SELECT * FROM EMPLOYEES;

UPDATE EMPLOYEES
SET SALARY = SALARY - SALARY * 0.10
WHERE DEPARTMENT = "FINANCE" OR ISACTIVE = FALSE;
SELECT * FROM EMPLOYEES;

DELETE FROM EMPLOYEES
WHERE DEPARTMENT = "HR" OR ISACTIVE = FALSE;
SELECT * FROM EMPLOYEES;
