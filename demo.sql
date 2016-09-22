SELECT d.dept_name, e.gender, AVG(s.salary) AS 'Avg. Salary'
FROM employees AS e
JOIN salaries AS s
	ON e.emp_no = s.emp_no
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN departments AS d
	ON de.dept_no = d.dept_no
WHERE s.to_date > CURDATE()
	AND de.to_date > CURDATE()
GROUP BY e.gender, d.dept_name
ORDER BY d.dept_name, e.gender;

	
-- subqueries 
-- current dept manager names

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
	SELECT emp_no 
	FROM dept_manager
	WHERE to_date = '9999-01-01'
);
	