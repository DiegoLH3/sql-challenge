SELECT employee.emp_no,
     employee.last_name,
     employee.first_name,
     employee.sex,
     salaries.salary
From employee
INNER JOIN salaries on
    employee.emp_no = salaries.emp_no;


SELECT first_name,
     last_name,
     hire_date
FROM employee
WHERE date_part('year', hire_date)=1986;


SELECT dept_manager.dept_no,
     department.dept_name,
     dept_manager.emp_no,
     employee.first_name,
     employee.last_name
FROM dept_manager
INNER JOIN department ON
    dept_manager.dept_no = department.dept_no
INNER JOIN employee ON
    dept_manager.emp_no = employee.emp_no;


SELECT dept_emp.dept_no,
     dept_emp.emp_no,
     employee.last_name,
     employee.first_name,
     department.dept_name
FROM dept_emp
INNER JOIN employee ON
    dept_emp.emp_no = employee.emp_no
INNER JOIN department ON
    dept_emp.dept_no = department.dept_no;


SELECT first_name,
     last_name,
     sex
FROM employee
WHERE first_name = 'Hercules'
    AND last_name LIKE 'B%';


SELECT employee.emp_no,
     employee.last_name,
     employee.first_name
FROM employee
INNER JOIN dept_emp ON
    employee.emp_no = dept_emp.emp_no
INNER JOIN department ON
    department.dept_no = dept_emp.dept_no
WHERE department.dept_name = 'Sales';


SELECT employee.emp_no,
     employee.last_name,
     employee.first_name,
     department.dept_name
FROM employee
INNER JOIN dept_emp ON
    employee.emp_no = dept_emp.emp_no
INNER JOIN department ON
    department.dept_no = dept_emp.dept_no
WHERE department.dept_name IN ('Sales', 'Development');


SELECT last_name,
     count(last_name)
FROM employee
GROUP BY last_name
ORDER BY count(last_name) DESC;
