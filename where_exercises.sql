USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');



# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%');

# Find all employees hired in the 90s — 135,214 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN CAST('1990-01-01' AS DATE) AND CAST('1999-12-30' AS DATE);

# Find all employees born on Christmas — 842 rows.

SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '____-12-25';


# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE "%q%";

-- ////////////////////////////////////////////////////////

# Update your query for 'Irena', 'Vidya', or 'Maya'
# to use OR instead of IN — 709 rows.

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE ('Irena')
      OR first_name LIKE ('Vidya')
      OR first_name LIKE ('Maya');

# Add a condition to the previous query to find everybody with
# those names who is also male — 441 rows.
SELECT gender, first_name, last_name
FROM employees
WHERE (first_name LIKE ('Irena')
       OR first_name LIKE ('Vidya')
       OR first_name LIKE ('Maya'))
      AND gender = ('M');


# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%')
      OR last_name LIKE  ('%e');

# Duplicate the previous query and update it to find all employees whose last
# name starts and ends with 'E' — 899 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('E%e');

# Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '____-12-25'
      AND hire_date like '199%';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE ('%q%')
      AND last_name NOT LIKE ('%qu%');
