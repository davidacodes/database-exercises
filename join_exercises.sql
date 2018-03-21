USE employees;

-- question 2
--  query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ' ,e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%'
ORDER BY d.dept_name;


-- question 3
-- all departments currently managed by women.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ' ,e.last_name) AS Department_Manager
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
WHERE manager.to_date LIKE '9999%' AND e.gender = 'F'
ORDER BY d.dept_name;


-- question 4
-- current titles of employees currently working in the Customer Service department

SELECT t.title AS Title, COUNT(t.title) AS Employee_Count
FROM employees e
  JOIN titles t
    ON e.emp_no = t.emp_no
  JOIN dept_emp de
    ON e.emp_no = de.emp_no
  JOIN departments d
    ON de.dept_no = d.dept_no
WHERE t.to_date LIKE '9999%'
      AND d.dept_name LIKE 'Cust%'
GROUP BY t.title
ORDER BY Employee_Count DESC;


-- question 5
-- Find the current salary of all current managers.

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ' ,e.last_name) AS Department_Manager,
  s.salary AS Salary
FROM employees AS e
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
  JOIN departments d
    ON manager.dept_no = d.dept_no
  JOIN salaries s
    ON e.emp_no = s.emp_no
WHERE manager.to_date LIKE '9999%' AND s.to_date LIKE '9999%'
ORDER BY d.dept_name;

-- Bonus Find the names of all current employees,
-- their department name, and their current manager's name.


SELECT  CONCAT(e.first_name, ' ' ,e.last_name) AS Employee_Name,
        d.dept_name AS Department_Name,
        CONCAT(m.first_name, ' ' ,m.last_name) AS Manager_Name
  FROM employees AS e
  JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
  JOIN departments d
    ON emp.dept_no = d.dept_no
  JOIN dept_manager
    ON emp.dept_no = dept_manager.dept_no
  JOIN employees as m
    ON m.emp_no = dept_manager.emp_no
  WHERE emp.to_date LIKE '9999%' AND dept_manager.to_date LIKE '9999%';


-- Write a query to get the average salary current managers make by gender
-- M 79350.60
-- F 75690.00

SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
WHERE manager.to_date LIKE '9999%'
      AND s.to_date LIKE '9999%'
GROUP BY e.gender;

-- Write a query to get the avg salary managers historically make by gender
-- M 72810.94
-- F 62037.21

SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN dept_manager manager
    ON e.emp_no = manager.emp_no
GROUP BY e.gender;




-- get avg salary for all current employees by gender
-- M 72044.66
-- F 71963.57

SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN titles t
    ON e.emp_no = t.emp_no
WHERE t.to_date LIKE '9999%'
       AND s.to_date LIKE '9999%'
GROUP BY e.gender;




-- get avg historic salary for all employees by gender
-- M 63842.25
-- F 63750.17

SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Average Salary'
FROM employees e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN titles t
    ON e.emp_no = t.emp_no
GROUP BY e.gender;
















































