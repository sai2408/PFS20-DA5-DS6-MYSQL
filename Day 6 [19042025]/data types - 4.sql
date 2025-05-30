CREATE DATABASE HELLO6;
USE HELLO6;

CREATE TABLE T1(
	COL1 DATE
);
INSERT INTO T1 VALUES ("2024-04-12");
SELECT * FROM T1;
INSERT INTO T1 VALUES ("2024-12-12");
SELECT * FROM T1;
INSERT INTO T1 VALUES ("2024-08-30");
SELECT * FROM T1;
INSERT INTO T1 VALUES ("2024-08-31");
SELECT * FROM T1;
INSERT INTO T1 VALUES ("2024-09-31");
SELECT * FROM T1;
INSERT INTO T1 VALUES ("2024/04/12");
SELECT * FROM T1;

SELECT CURDATE();

SELECT DATE_ADD("2024-08-24",INTERVAL 5 DAY);
SELECT DATE_ADD("2024-08-24",INTERVAL 10 DAY);

SELECT DATE_ADD("2024-08-24",INTERVAL 5 MONTH);
SELECT DATE_ADD("2024-08-24",INTERVAL 2 MONTH);

SELECT DATE_ADD("2024-08-24",INTERVAL 5 YEAR);

SELECT DATEDIFF("2024-08-24","2024-08-20");
SELECT DATEDIFF("2024-08-20","2024-08-24");
SELECT DATEDIFF("2024-08-24","2023-08-24");

CREATE TABLE T2(
	COL1 TIME
);
INSERT INTO T2 VALUES ("12:12:12");
SELECT * FROM T2;
INSERT INTO T2 VALUES ("12:12:60");
SELECT * FROM T2;
INSERT INTO T2 VALUES ("12:12:59");
SELECT * FROM T2;
INSERT INTO T2 VALUES ("12:60:12");
SELECT * FROM T2;
INSERT INTO T2 VALUES ("12:59:12");
SELECT * FROM T2;
INSERT INTO T2 VALUES ("100:12:12");
SELECT * FROM T2;

CREATE TABLE T3(
	COL1 TIMESTAMP
);
INSERT INTO T3 VALUES ("2024-08-24 12:12:12");
SELECT * FROM T3;
INSERT INTO T3 VALUES ("12:12:12 2024-08-24");

CREATE TABLE T4(
	COL1 INT,
    COL2 TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO T4 VALUES (101,"2024-08-24 12:12:12");
SELECT * FROM T4;
INSERT INTO T4 (COL1) VALUES (102);
SELECT * FROM T4;

