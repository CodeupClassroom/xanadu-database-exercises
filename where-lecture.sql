use employees;

SHOW TABLES;

# example queries on the employees table

describe employees;

select * from employees;



# the list of employees that were hired in 1987-02-23

SELECT * FROM employees
WHERE hire_date = '1987-02-23';

# all the employees whose first name starts with an F

SELECT * FROM employees
WHERE first_name LIKE 'f%';



# all the employees whose last name ends with ing
SELECT * FROM employees
WHERE last_name LIKE '%ing';


# all the employees with "in" somewhere in their first name
SELECT * FROM employees
WHERE last_name LIKE '%in%';


# all the employees that has an employee number between 12434 and 12440

SELECT * FROM employees
WHERE emp_no >= 12434 && emp_no <= 12440;

SELECT * FROM employees
WHERE emp_no BETWEEN 12434 AND 12440;


# all employee employee numbers and hire dates for employees hired in March

SELECT emp_no, hire_date FROM employees
WHERE hire_date LIKE '%-03-%';



# all employees hired before February 7, 1991
SELECT * FROM employees
WHERE hire_date < '1991-02-07';



# all employees with one of the following first names 'Elvis','Magy','Brendon'

SELECT * FROM employees
WHERE first_name IN ('Elvis','Magy','Brendon');

# same results different approach

SELECT * FROM employees
WHERE first_name = 'Elvis'
  OR first_name = 'Magy'
  OR first_name = 'Brendon';

# DISTINCT

SELECT DISTINCT first_name,last_name FROM employees;


# Chained where clauses

# get the emp_no, first_name, and last_name from employees
# where the last name is Herber or Baek and the emp_no is less than 50000 and the first name is equal to Dimitri

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name IN ('Herber', 'Baek')
  AND emp_no < 20000
  AND first_name = 'Dmitri';

