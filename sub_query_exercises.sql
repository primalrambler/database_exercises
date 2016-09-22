-- Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT CONCAT(first_name,' ',last_name) AS 'Full Name', hire_date
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
	
);


-- Find all the titles held by all employees with the first name Aamod.
SELECT title, count(*) AS 'Number of Aamods'
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM `employees`
	WHERE first_name = 'Aamod'
)
GROUP BY title;


-- Find all the department managers that are female.

SELECT CONCAT(first_name,' ',last_name), gender
FROM `employees`
WHERE emp_no IN (
	SELECT `emp_no`
	FROM dept_manager
)
	AND gender = 'F';


-- BONUS Find all the department names that have female managers.

SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT `dept_no`
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'
	)
);