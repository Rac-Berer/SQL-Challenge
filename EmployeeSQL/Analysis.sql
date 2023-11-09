--Salary per Employee

SELECT employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary
FROM employees
LEFT JOIN salaries
ON (employees.emp_no=salaries.emp_no)
ORDER BY employees.emp_no


--Employees hired in 1986

SELECT * FROM employees
WHERE hire_date >= '1986-01-01'
	AND hire_date < '1987-01-01'
	
	
--Manager of each department

SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name, 
employees.first_name
FROM dept_manager
INNER JOIN employees 
ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no
ORDER BY emp_no