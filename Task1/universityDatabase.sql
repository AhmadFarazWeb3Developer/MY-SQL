CREATE DATABASE universityDB;
USE universityDB;

CREATE TABLE Teacher (
    tid INT,
    t_fName VARCHAR(100),
    t_lName VARCHAR(100),
    city VARCHAR(100),
    age INT,
    yearofexp decimal(3, 1),
    salary INT,
    qualification VARCHAR(100),
    bonus INT,
    houseallowance int
);

INSERT INTO Teacher VALUES 
(5001, 'Salama', 'Iqbal', 'Rawalpindi', 30, 7, 110000, 'Ph D in progress', 11000, 22000),
(5002, 'Kamal', 'Ahmad', 'Muzaffargarh', 35, 15, 90000, 'Ph D', 9000, 18000),
(5003, 'Kaleem', 'Rasheed', 'Gujar Khan', 32, 7, 130000, 'MS', 14000, 25000),
(5004, 'Jamal', 'Farooq', 'Mianwali', 28, 4, 70000, 'MS', 17000, 12000),
(5005, 'Nabeel', 'Ahmad', 'Mianwali', 28, 4, 750000, 'MS', 19000, 20000),
(5006, 'Razaq', 'Ahmad', 'M B Di', 35, 10, 150000, 'Ph D', 31000, 52000),
(5007, 'Saad', 'Abid', 'Rawalpindi', 34, 13, 1710000, 'MS', 41000, 62000),
(5008, 'Saleem', 'Mushtaq', 'Islamabad', 30, 5, 140000, 'MS', 11500, 22700),
(5009, 'Tariq', 'Sohail', 'Rawalpindi', 33, 7, 110000, 'MS', 11000, 22000),
(5010, 'Ahmad', 'Iqbal', 'Rawalpindi', 30, 7, 130000, 'MS', 17000, 24000);

SELECT * FROM Teacher;

/* 3- Write a query that will show records of teachers ordered by age in descending order. */
SELECT * FROM Teacher ORDER BY age DESC;

/* 4- Write a query that will retrieve data of teachers whose bonus is 11000. */
SELECT * FROM Teacher WHERE bonus = 11000;

/* 5- Write a query that will display years of experience of those teachers whose house allowance is 22700. */
SELECT yearofexp FROM Teacher WHERE houseallowance = 22700;

/* 6- Write a query that will display all teachers whose tid is 5009. */
SELECT * FROM Teacher WHERE tid = 5009;

/* 7- Write a query that will retrieve t_fname and t_fname as the full name of teachers whose qualification is Ph D. */
SELECT CONCAT(t_fName, ' ', t_lName) AS full_Name FROM Teacher WHERE qualification = 'Ph D';

/* 8- Write a query that will display all teachers who live in 'Rwp'. */
SELECT * FROM Teacher WHERE city = 'Rawalpindi';

/* 9- Write a query that will retrieve all teachers whose t_lname is 'Iqbal'. */
SELECT * FROM Teacher WHERE t_lName = 'Iqbal';

/* 10- Write a SQL Statement that will retrieve non-duplicate cities from teachers ordered by city Descending. */
SELECT distinct city from Teacher  ORDER BY city DESC;

/* 11- Write a SQL Statement that will retrieve non-duplicate salaries from all teachers ordered by name Ascending. */
SELECT DISTINCT salary FROM Teacher ORDER BY salary ASC;

/* 12- Write a SQL Statement that will merge years of experience and bonus from teachers where bonus is equal to 9000. */
SELECT yearofexp, bonus FROM Teacher WHERE bonus = 9000;

/* 13- Write a SQL Statement that will merge Name and Age as "Name Age" from teacher table ordered by tid descending. */
SELECT CONCAT(t_fName, ' ', t_lName, ' ', age) AS "Name  Age" FROM Teacher ORDER BY tid DESC;

/* 14- Write a SQL Statement that will retrieve distinct names and cities from the teacher table ordered by name ascending. */
SELECT DISTINCT t_fName, city FROM Teacher ORDER BY t_fName ASC;

/* 15- Write a SQL Statement that will retrieve t_lname and age from the teacher table, and age must be displayed increased by 5. */
SELECT t_lName, age + 5 FROM Teacher;


drop table Teacher;
