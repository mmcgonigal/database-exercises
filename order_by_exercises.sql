USE employees;
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






