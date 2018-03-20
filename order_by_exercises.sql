USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;


SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;


SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;


SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no DESC;


SELECT birth_date, hire_date, first_name, last_name
FROM employees
WHERE birth_date LIKE '____-12-25'
      AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC
