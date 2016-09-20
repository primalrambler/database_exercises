-- individual title names
SELECT DISTINCT title FROM titles
ORDER BY title;

-- list of names that begin and end with E 
SELECT first_name, last_name FROM employees 
WHERE last_name LIKE '%E' AND last_name LIKE 'e%'
GROUP BY last_name;

-- list of last names that begin and end with E
-- and with unique first name 
SELECT first_name, last_name FROM employees 
WHERE last_name LIKE '%E' AND last_name LIKE 'e%'
GROUP BY last_name, first_name;

-- list of names that have q but not qu, no duplicates
SELECT last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE'%qu%'
GROUP BY last_name;