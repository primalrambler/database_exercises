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


-- breakdown departments by gender
SELECT COUNT(e.emp_no), e.gender, d.dept_name FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON de.dept_no = d.dept_no
WHERE de.to_date > curtime()
GROUP BY d.dept_no, e.gender;


	
-- subqueries 
-- current dept manager names

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
	SELECT emp_no 
	FROM dept_manager
	WHERE to_date = '9999-01-01'
);
	
-- most common birthday

SELECT birth_date, COUNT(birth_date)
FROM `employees`
GROUP BY birth_date
ORDER BY count(`birth_date`) DESC 
LIMIT 1;

-- least common birthday

SELECT birth_date, COUNT(birth_date)
FROM `employees`
GROUP BY birth_date
ORDER BY count(`birth_date`) ASC  
LIMIT 1;



-- what is the average salary of managers by department?
-- how many employees currently work in each department?
-- what is the average salary for each department?
-- what was the average salary in the 80s? By department?
-- how many times (on average) do employees switch titles?
-- how many times (on average) do employees get a raise?
