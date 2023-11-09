--1. Salary per Employee

SELECT employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary
FROM employees
LEFT JOIN salaries
ON (employees.emp_no=salaries.emp_no)
ORDER BY employees.emp_no


--2. Employees hired in 1986

SELECT * FROM employees
WHERE hire_date >= '1986-01-01'
	AND hire_date < '1987-01-01'
	
	
--3. Manager of each department

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

--4. Department number of each employee

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
ORDER BY emp_no


--5. Search for Hercules B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'