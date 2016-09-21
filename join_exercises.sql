-- shows each department along with the name of the current manager for that department

SELECT d.dept_name AS 'Department', concat(e.first_name,' ',e.last_name) AS 'Department Manager' FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01';

-- Find the name of all departments currently managed by women.

SELECT d.dept_name AS 'Department', concat(e.first_name,' ',e.last_name) AS 'Department Manager' FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

-- Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS 'Title', count(t.title) AS 'Count' FROM dept_emp AS de
JOIN titles AS t
ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009' AND t.to_date = '9999-01-01'
GROUP BY t.title;

-- Find the current salary of all current managers.
SELECT d.dept_name AS 'Department', CONCAT(e.first_name,' ', e.last_name) AS 'Manager', s.salary AS 'Salary' FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
JOIN salaries AS s
ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
GROUP BY d.dept_name;

-- Bonus Find the names of all current employees, their department name, and their current manager's name

SELECT CONCAT(e.first_name,' ',e.last_name) AS 'Employee', d.dept_name AS 'Department', CONCAT(emgr.first_name,' ',emgr.last_name) AS 'Manager'
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
JOIN employees AS emgr
ON dm.emp_no = emgr.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';