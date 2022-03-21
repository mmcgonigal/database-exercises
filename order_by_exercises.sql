USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY first_name ASC, last_name DESC ;

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






