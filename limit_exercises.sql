USE employees;


-- List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

-- employees born on Christmas and hired in the 90s,
-- find just the first 5 employees

SELECT birth_date, hire_date, first_name, last_name
FROM employees
WHERE birth_date LIKE '____-12-25'
      AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

-- Update the query to find the tenth page of results.

SELECT birth_date, hire_date, first_name, last_name
FROM employees
WHERE birth_date LIKE '____-12-25'
      AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;














