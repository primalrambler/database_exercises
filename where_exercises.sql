SELECT * FROM employees WHERE gender = 'M' AND (
first_name = 'Irena' 
OR first_name ='Vidya' 
OR first_name = 'Maya'
);

SELECT * FROM employees WHERE first_name = 'Irena'

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%Q%';