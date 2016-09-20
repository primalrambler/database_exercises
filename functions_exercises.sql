-- # of males named Irena, vidya or maya
SELECT COUNT(first_name),gender FROM employees WHERE gender = 'M' AND (
first_name = 'Irena' 
OR first_name ='Vidya' 
OR first_name = 'Maya'
);

-- # of females named Irena, vidya or maya
SELECT COUNT(first_name), gender FROM employees WHERE gender = 'F' AND (
first_name = 'Irena' 
OR first_name ='Vidya' 
OR first_name = 'Maya'
);


-- concatenated names fro those last names that begin and end with an e
SELECT CONCAT(first_name,' ',last_name) AS 'Full Name' FROM employees WHERE last_name LIKE 'e%e';


-- Days employed for those born on Christmas and hired in the '90's
SELECT first_name, last_name, DATEDIFF(curdate(),hire_date) AS 'Days Employed' FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%';

-- names with Q in it but not QU
SELECT first_name,last_name, COUNT(*) AS 'shared' FROM employees 
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY first_name
ORDER BY count(last_name) DESC ;