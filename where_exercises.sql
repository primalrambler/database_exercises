SELECT * FROM employees WHERE gender = 'M' AND (
first_name = 'Irena' 
OR first_name ='Vidya' 
OR first_name = 'Maya'
);

SELECT * FROM employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%';