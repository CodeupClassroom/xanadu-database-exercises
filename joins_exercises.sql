USE employees;
-- 2. Write a query that shows each department along with the name of the current manager for that department.

-- needed tables: departments, employees table, dept_manager table

SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager' FROM departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
ORDER BY `Department Name`;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager' FROM departments as d
JOIN dept_manager as dm
  ON dm.dept_no = d.dept_no
JOIN employees as e
  ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
ORDER BY `Department Name`;



-- 3. Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
       JOIN dept_manager AS m
         ON m.emp_no = e.emp_no
       JOIN departments AS d
         ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND e.gender = 'F'
ORDER BY d.dept_name;

-- 4. Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS "Title", COUNT(*) AS "Count"
FROM departments AS d
       JOIN dept_emp AS de
         ON de.dept_no = d.dept_no
       JOIN titles AS t
         ON t.emp_no = de.emp_no
WHERE de.to_date > NOW()
  AND t.to_date > NOW()
  AND d.dept_name = "Customer Service"
GROUP BY t.title;


-- 5. Find the current salary of all current managers.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Manager', s.salary
FROM salaries AS s
       JOIN dept_manager AS m
         ON m.emp_no = s.emp_no
       JOIN employees AS e
         ON e.emp_no = m.emp_no
       JOIN departments AS d
         ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND s.to_date > NOW()
ORDER BY d.dept_name;


-- Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM employees AS e
       JOIN dept_emp AS de
         ON de.emp_no = e.emp_no
       JOIN departments AS d
         ON d.dept_no = de.dept_no
       JOIN dept_manager AS m
         ON m.dept_no = d.dept_no
       JOIN employees AS managers
         ON m.emp_no = managers.emp_no
WHERE de.to_date > NOW()
  AND m.to_date > NOW();


