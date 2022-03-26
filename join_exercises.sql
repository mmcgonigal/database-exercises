USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# department name , department manager (first lastname )
SELECT D.dept_name AS Department_Name, CONCAT(E.first_name, ' ' , E.last_name) AS Department_Manager
FROM dept_manager DM JOIN  departments D
    ON DM.dept_no = D.dept_no
    JOIN employees E
        ON DM.emp_no = E.emp_no
WHERE YEAR(to_date) = 9999;

SELECT D.dept_name AS '\Department Name' ,CONCAT(E.first_name, ' ' , E.last_name) AS '\Department Manager'
FROM dept_manager DM JOIN departments D
ON DM.dept_no = D.dept_no
JOIN employees E
ON DM.emp_no = E.emp_no
WHERE E.gender = 'F'
AND YEAR(DM.to_date) = 9999;

SELECT title, COUNT(t.title)
FROM titles t JOIN dept_emp de
 ON t.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE de.dept_no = 'd009'
AND YEAR(de.to_date) = 9999
GROUP BY t.title;