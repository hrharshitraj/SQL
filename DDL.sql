CREATE DATABASE IF NOT EXISTS DDL;
SHOW DATABASES;    # All Inbuilt as well as user defined Database is shown;
USE DDL;

CREATE TABLE student_data (
	roll INT PRIMARY KEY,
    name VARCHAR(255),
    isMarried boolean
);

# Inserting columns in Table-
INSERT INTO student_data VALUES(22,'Harshit',false);
INSERT INTO student_data VALUES(27,'Gopal',false);
INSERT INTO student_data VALUES(05,'Virat',true);
SELECT * FROM student_data;

ALTER TABLE student_data ADD CGPA FLOAT(5);    # To add a column to an Existing table;
RENAME TABLE student_data TO students;
SELECT * FROM students;


TRUNCATE TABLE students;    # All the rows have been removed, no Harshit, no Gopal, no Virat, but roll, name, isMarried and CGPA, i.e, Structure of the table is still there;
DROP TABLE students;    # Table Removed
SHOW TABLES;    # Shows the table in DDL database;