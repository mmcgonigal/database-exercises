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


