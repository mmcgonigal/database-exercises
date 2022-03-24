USE employees ;

#  find all employees with same hire date as employee no 101010

SELECT *
FROM employees
WHERE hire_date IN (SELECT hire_date
    FROM employees
    WHERE emp_no= 101010 );

# find all titles held by all employee with first name Aamod

SELECT title
FROM titles
WHERE emp_no IN ( SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod');

SELECT DISTINCT title
FROM titles
WHERE emp_no IN ( SELECT emp_no
                  FROM employees
                  WHERE first_name = 'Aamod');

# find all department manager that are female.

SELECT first_name,last_name
FROM employees
WHERE emp_no IN(SELECT emp_no
    FROM dept_manager
    WHERE YEAR(to_date) = 9999)
AND gender = 'F';


# BONUS
# 1.find all the department names that currently have female managers

SELECT dept_name
FROM departments
WHERE dept_no IN (SELECT dept_no
    FROM dept_manager
    WHERE YEAR(to_date)=9999
    AND emp_no IN (SELECT emp_no
        FROM employees
        WHERE gender = 'F'));


# 2.find the first and last name of the employee with the highest salary

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no
    FROM salaries
    WHERE salary IN (SELECT MAX(salary)
        FROM salaries));

