USE employees;


# number 2 -1
SELECT DISTINCT title
FROM titles;

# number 2-2
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# number 3 -top 5 salaries and display just employees number from salaries.
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

#number 4 display row 46 to 50
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;



