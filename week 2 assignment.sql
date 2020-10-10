SELECT t.title, COUNT(birth_date)
FROM employees e
RIGHT JOIN titles t ON e.emp_no = t.emp_no 
AND e.birth_date > '1965-01-01'
GROUP BY t.title;


SELECT t.title, avg(salary) AS avg_salary
FROM salaries s
INNER JOIN titles t ON s.emp_no = t.emp_no
GROUP BY t.title;

SELECT d.dept_name, sum(salary) AS salary_sum
FROM dept_emp de
INNER JOIN departments d ON d.dept_no = de.dept_no
INNER JOIN salaries s ON s.emp_no =  de.emp_no
WHERE d.dept_name = 'Marketing' AND
s.from_date >= '1990-01-01' AND s.to_date <= '1992-12-31'
GROUP BY d.dept_name;





