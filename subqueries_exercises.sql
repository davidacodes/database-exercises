USE employees;


-- Find all the employees with the same hire date as employee 101010 using a sub-query.
-- 69 Rows

SELECT CONCAT(first_name, ' ' ,last_name) AS Name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);


-- Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique titles

SELECT e.first_name AS Name, t.title AS Titles
FROM employees AS e
JOIN titles t
  ON e.emp_no = t.emp_no
WHERE title IN (
  SELECT title
  FROM titles
    JOIN employees e2 ON titles.emp_no = e2.emp_no
  WHERE e.first_name = "Aamod"
);



-- Find all the current department managers that are female.

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ' ,e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%' AND e.gender IN (
  SELECT employees.gender
  FROM employees
  WHERE gender = 'F'
)
ORDER BY d.dept_name;


--  Find all the department names that currently have female managers.

SELECT dept_name AS Department_Name
FROM departments
WHERE dept_name IN (
  SELECT dept_name
  FROM departments as dn
  JOIN dept_manager AS dm
      ON dn.dept_no = dm.dept_no
  JOIN employees e
      ON dm.emp_no = e.emp_no
  WHERE dm.to_date LIKE '9999%' AND e.gender = 'F'
);


-- Find the first and last name of the employee with the highest salary.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS BIG_BALLER
FROM employees AS e
WHERE emp_no IN (
  SELECT s.emp_no
  FROM employees AS e2
  JOIN salaries s
      ON e2.emp_no = s.emp_no
  ORDER BY salary DESC
) LIMIT 1;




