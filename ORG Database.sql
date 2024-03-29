CREATE DATABASE IF NOT EXISTS ORG;
SHOW DATABASES;
USE ORG;

# Creating a table - Worker, Parent Table;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);
SELECT * FROM Worker;
# Scrimba

# Creating new rows-
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
	(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
    (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
    (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
    (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
    (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
    (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
    (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
    (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

SELECT MAX(SALARY) FROM Worker;
SELECT * FROM Worker where SALARY>100000;
SELECT * FROM Worker where SALARY=100000;
SELECT * FROM Worker where SALARY<100000;

# Child (Reference) Table-
CREATE TABLE Bonus (
	WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    # WORKER_REF_ID is a foreign key by referencing Worker(WORKER_ID)
    FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
SELECT * FROM Bonus;

INSERT INTO Bonus
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) value
    (001, 5000, '16-02-20'),
    (002, 3000, '16-06-11'),
    (003, 4000, '16-02-20'),
    (001, 4500, '16-06-11'),
    (002, 3500, '16-06-11');
SELECT * FROM Bonus;

CREATE TABLE Title (
	WORKED_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
		FOREIGN KEY(WORKED_REF_ID)
			REFERENCES Worker(WORKER_ID)
            ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKED_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    (001, 'Manager', '2016-02-20 00:00:00'),
    (002, 'Executive', '2016-06-11 00:00:00'),
    (008, 'Executive', '2016-06-11 00:00:00'),
    (005, 'Manager', '2016-06-11 00:00:00'),
    (004, 'Asst. Manager', '2016-06-11 00:00:00'),
    (007, 'Executive', '2016-06-11 00:00:00'),
    (006, 'Lead', '2016-06-11 00:00:00'),
    (003, 'Lead', '2016-06-11 00:00:00');
SELECT * FROM Title;
# DROP TABLE Title;
SHOW TABLES;

# DUAL Tables-  No need to refer to any user defined table for obvious actions-
SELECT 55+11;    # 66
SELECT now();    # 2023-07-07 16:49:40
SELECT ucase('Harshit');   # HARSHIT

# WHERE-
SELECT * FROM Worker WHERE SALARY > 100000;

# BETWEEN-
SELECT * FROM Worker WHERE SALARY BETWEEN 80000 AND 200000;