-- ORDER BY LECTURE
-- see curriculum


# SELECT * FROM employees
# WHERE first_name LIKE 'R%'
# ORDER BY first_name;

DESCRIBE employees;






SELECT first_name, last_name FROM employees
ORDER BY first_name DESC, last_name;

















-- first employee hired

SELECT * FROM employees
ORDER BY hire_date;

-- last employee hired
SELECT * FROM employees
ORDER BY hire_date DESC;

-- first female employee hired
SELECT * FROM employees
ORDER BY gender DESC, hire_date;

-- highest current salary
SELECT * FROM salaries
ORDER BY to_date DESC, salary;



