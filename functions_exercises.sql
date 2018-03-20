
# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a
# single column in your results.

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE ('E%')
      OR last_name LIKE  ('%e')
ORDER BY emp_no DESC
LIMIT 10;


# For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the
# company (Hint: You will also need to use now() or curdate())


SELECT CONCAT( first_name, ' ', last_name, ' has been working at the company for ',
               DATEDIFF(CURDATE(), hire_date), " days! That's ", DATEDIFF(CURDATE(), hire_date)/365, " years!"  )
FROM employees
WHERE birth_date LIKE '____-12-25'
      AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC;

SELECT * , DATEDIFF(CURDATE(), hire_date) AS 'Days at company.'
FROM employees
WHERE birth_date LIKE '____-12-25'
      AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC;





