-- males named Irena, vidya or maya
SELECT * FROM employees WHERE gender = 'M' AND (
first_name = 'Irena' 
OR first_name ='Vidya' 
OR first_name = 'Maya'
);

-- begins with an E or ends with an E
SELECT * FROM employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%';

-- begins and ends with an E
SELECT * FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%';

-- born on Christmas and hired in the '90's
SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%';

-- names with Q in it but not QU
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';