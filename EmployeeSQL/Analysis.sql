SELECT Employees.emp_no, last_name, first_name, sex, salary FROM
Employees INNER JOIN Salaries 
ON Employees.emp_no = Salaries.emp_no;

SELECT first_name, last_name, hire_date FROM 
Employees
WHERE hire_date LIKE '%1986';

SELECT Dept_Manager.dept_no, Dept_Manager.emp_no, first_name, last_name, dept_name FROM 
Dept_Manager INNER JOIN Departments ON Dept_Manager.dept_no = Departments.dept_no
INNER JOIN Employees ON Employees.emp_no = Dept_Manager.emp_no;

SELECT Dept_emp.dept_no, Dept_emp.emp_no, first_name, last_name, dept_name FROM
Employees INNER JOIN Dept_emp ON Employees.emp_no = Dept_emp.emp_no
INNER JOIN Departments ON Dept_emp.dept_no = Departments.dept_no;

SELECT first_name, last_name, sex FROM
Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT Employees.emp_no, first_name, last_name, dept_name FROM
Employees INNER JOIN Dept_emp ON Employees.emp_no = Dept_emp.emp_no
INNER JOIN Departments ON Dept_emp.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';

SELECT Employees.emp_no, first_name, last_name, dept_name FROM
Employees INNER JOIN Dept_emp ON Employees.emp_no = Dept_emp.emp_no
INNER JOIN Departments ON Dept_emp.dept_no = Departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, COUNT(last_name) FROM
Employees
GROUP BY last_name
ORDER By COUNT(last_name) DESC;