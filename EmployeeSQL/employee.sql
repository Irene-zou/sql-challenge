-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select DISTINCT
emp.emp_no,
emp.last_name,
emp.first_name,
emp.sex,
sal.salary
from employees emp
LEFT JOIN salaries sal
on emp.emp_no = sal.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select DISTINCT
emp.first_name,
emp.last_name,
emp.hire_date
from employees emp
where extract(year from emp.hire_date) = 1986;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select DISTINCT
dp.dept_no,
dp.dept_name,
emp.emp_no,
emp.last_name,
emp.first_name
from dept_manager dm
Inner JOIN departments dp
on dp.dept_no = dm.dept_no
Inner JOIN employees emp
on emp.emp_no = dm.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select DISTINCT
emp.emp_no,
emp.last_name,
emp.first_name,
dp.dept_name
from dept_emp dm
Inner JOIN departments dp
on dp.dept_no = dm.dept_no
Inner JOIN employees emp
on emp.emp_no = dm.emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select DISTINCT
emp.last_name,
emp.first_name,
emp.sex
from employees emp
WHERE UPPER(emp.first_name) = 'HERCULES'
AND UPPER(emp.last_name) like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select DISTINCT
emp.emp_no,
emp.last_name,
emp.first_name,
dp.dept_name
from dept_emp dm
Inner JOIN departments dp
on dp.dept_no = dm.dept_no
Inner JOIN employees emp
on emp.emp_no = dm.emp_no
WHERE UPPER(dp.dept_name) = 'SALES';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select DISTINCT
emp.emp_no,
emp.last_name,
emp.first_name,
dp.dept_name
from dept_emp dm
Inner JOIN departments dp
on dp.dept_no = dm.dept_no
Inner JOIN employees emp
on emp.emp_no = dm.emp_no
WHERE (UPPER(dp.dept_name) = 'SALES'
or UPPER(dp.dept_name) = 'DEVELOPMENT');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select DISTINCT
emp.last_name,
COUNT(emp.emp_no) as FREQUENCY
FROM employees emp
GROUP BY 1;

