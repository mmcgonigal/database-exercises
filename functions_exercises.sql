USE employees;

# number 2 , use concat() to combine their first and last name together as a single column in your result
SELECT CONCAT (first_name,' ',last_name)
FROM employees
WHERE first_name LIKE 'E%'
  AND first_name LIKE '%e'
  AND last_name LIKE 'E%'
  AND last_name LIKE '%e';

# number 3 find all employees born on christmas

SELECT *
FROM employees
WHERE MONTH(birth_date)=12
AND DAY(birth_date) = 25 ;

#number 4 born on christmas and hired in 90s
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH (birth_date) = 12
AND DAY(birth_date) = 25;

#number 5
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH (birth_date) = 12
AND DAY(birth_date) = 25
ORDER BY hire_date DESC;


#number 6 how many days the employee has been working for// datediff(now() or curdate(), hire_date)
SELECT *,DATEDIFF (curdate(),hire_date)
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH (birth_date) = 12
AND DAY(birth_date) = 25;


# what are the top three most common job titles?
SELECT title, COUNT(*)
FROM titles
GROUP BY title
ORDER BY COUNT(*) DESC
LIMIT 3;



# what is the lowest employee number for the first senior engineers in the company?
SELECT emp_no
FROM titles
WHERE title = 'Senior Engineer'
ORDER BY from_date ASC
LIMIT 5;

SELECT *
FROM employees
WHERE emp_no =235233;


# what is the most common ‘from date’ for job titles? for staff only?

SELECT from_date, COUNT(title)
FROM titles
GROUP BY from_date
ORDER BY COUNT(title) DESC;
# most common from date : 1998 - 10-25

SELECT from_date, COUNT(from_date)
FROM titles
WHERE title = 'staff'
GROUP BY from_date
ORDER BY COUNT(from_date) DESC;
#for 'staff' most common from_date : 1990-04-20


# what is the highest employee number for an engineer?
SELECT emp_no,title
FROM titles
WHERE title = 'engineer'
ORDER BY emp_no DESC;
# highest employee number : 499999


# what are the names of the 10 most recently hired employees who identified as female in the company? the first 10?

SELECT *
FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC
LIMIT 10 ;


# what is the most common birthday?

SELECT birth_date, COUNT(birth_date)
FROM employees
GROUP BY birth_date
ORDER BY COUNT(birth_date) DESC;
#  most common birthday : 1952 -03-08

# what is the most common  birthday for employees who identified as female? how about vs. those who identified as male?
SELECT birth_date,gender, COUNT(birth_date)
FROM employees
WHERE gender = 'F'
GROUP BY birth_date
ORDER BY COUNT(birth_date) DESC;
# most common birthday for female employees 1953 -10-12
SELECT birth_date,gender, COUNT(birth_date)
FROM employees
WHERE gender = 'M'
GROUP BY birth_date
ORDER BY COUNT(birth_date) DESC;
# most common birthday for male employees 1953-07-11



# what is the most common hire date for female and male employees?
SELECT hire_date, COUNT(hire_date)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;
# most hired date for male and female : 1985-06-20


# what is the longest last name of someone born on March 8, 1952?
# SELECT  last_name, COUNT(CHAR_LENGTH(last_name))
# FROM employees
# GROUP BY last_name
# ORDER BY COUNT(CHAR_LENGTH(last_name)) DESC
# WHERE YEAR(birth_date)= 1952
# AND MONTH(birth_date) = 03
# AND DAY(birth_date) = 08;
SELECT last_name, MAX(LENGTH(last_name)) AS letters, birth_date
FROM employees
WHERE birth_date = '1952-03-08'
GROUP BY last_name
ORDER BY 2 DESC
LIMIT 1;


SELECT last_name, length(last_name)
FROM employees
WHERE birth_date = date('1952-03-08')
GROUP BY last_name
ORDER BY CHAR_LENGTH(last_name) DESC;



















# ###################################################################################



# number 2 ,should start with Irena pelz and finish with Vidya Awdeh
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC;


#  number 3 , result of Irena Acton and end with Vidya Zweizig
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC, last_name ASC ;

# number 4 . result of Irena Acton to maya Zyda
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name ASC;

# number 5update employees with "e" in their last name to sort by their result by their employee number
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no ASC;

# number 6 reverse

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;


SELECT *
FROM employees
WHERE last_name LIKE 'E%';

USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE ('%q%');

SELECT *
FROM employees
WHERE first_name= 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE  'E%'
   OR last_name LIKE '%e';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'Ho%'
   OR first_name LIKE 'Ke%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'Ho%'
  AND first_name LIKE 'Ke%';


SELECT *
FROM employees
WHERE last_name LIKE  'E%'
  AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%'






