# =========== GROUPING

# Grouping by a single column

# SELECT gender, COUNT(*) FROM employees
# GROUP BY gender;

# SELECT DISTINCT gender FROM employees;

# Grouping by multiple columns

SELECT emp_no, first_name, last_name, COUNT(*) FROM employees
GROUP BY first_name DESC, last_name;


# Return the longest first_name
SELECT first_name, LENGTH(first_name) FROM employees
WHERE first_name LIKE 'a%'
GROUP BY first_name
ORDER BY LENGTH(first_name) DESC;


# =========== AGGREGATE FUNCTIONS

# COUNT
# Find total number of employees
SELECT COUNT(*) FROM employees;


# Aggregating with group by
# Find total number of female and male employees
SELECT gender, COUNT(*) FROM employees
GROUP BY gender
ORDER BY COUNT(*);


# MIN and MAX
# Select the first and last hire date for each first name
DESCRIBE employees;
SELECT first_name, MIN(hire_date), MAX(hire_date) FROM employees
GROUP BY first_name;

# COUNT
# Find total number of employees
SELECT COUNT(*) FROM employees;

# Aggregating with group by
# Find total number of female and male employees
SELECT gender, COUNT(*) FROM employees
GROUP BY gender;

# MIN and MAX
# Select the first and last hire date for each first name
SELECT first_name, MIN(hire_date) as 'First Hired', MAX(hire_date) as 'Last Hired' FROM employees
GROUP BY first_name;


# GROUP BY multiple columns
# Find how many first and last name duplicates for each name combination
SELECT first_name, last_name, COUNT(*) FROM employees
GROUP BY first_name, last_name;



# Find the total number of employees with the same first name for each name
# (sort in various ways with ORDER BY)
SELECT first_name, COUNT(*) FROM employees
GROUP BY first_name
ORDER BY COUNT(*) DESC;



DESCRIBE salaries;

# Find the minimum, maximum, average, and total number of salaries
SELECT COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary) FROM salaries;


# predict curriculum examples...
SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;
