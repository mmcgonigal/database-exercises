USE employees;

# 3 return 10 employee in a result set named 'full_name'
SELECT CONCAT(last_name,' ',first_name) AS full_name
FROM employees
LIMIT 10;

# 4 add DOB
SELECT CONCAT(last_name, ' ', first_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;

SELECT CONCAT (emp_no, ' - ',last_name, ', ' ,first_name) AS full_name, birth_date AS DOB
FROM employees
ORDER BY DOB ASC
LIMIT 10;

DESCRIBE departments;
DESCRIBE dept_emp;
