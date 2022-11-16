select * from employees;

--a.Consultar el nombre y salario del empleado con mayor salario. 
select employees.first_name , Max(salaries.salary) as Salary 
from employees inner join salaries on employees.emp_no = salaries.emp_no
order by salaries.salary;

select * from salaries;

--b.Consultar los departamentos y para cada uno incluir la suma de los salarios de los empleados de ese departamento.
select departments.dept_name , SUM(salaries.salary) as Suma_Salario  
from salaries 
inner join employees on employees.emp_no = salaries.emp_no 
inner join dept_manager  on dept_manager.emp_no = employees.emp_no
inner join departments  on departments.dept_no = dept_manager.dept_no
group by departments.dept_name;


--c.	Consultar para cada empleado, todos sus datos y además el número de empleados que han nacido el mismo día. 
select  birth_date, COUNT(*) as cumple_mismo_dia, first_name from employees
group by employees.first_name, employees.birth_date;


--select birth_date, COUNT(*) as cumple_mismo_dia from employees
--group by employees.birth_date;

--select first_name, COUNT(birth_date) cont from employees 
--group by employees.first_name
--having COUNT(birth_date)>0
--order by cont desc;

select * from dept_emp;
select * from departments;
select * from dept_manager;
select * from titles;
select * from salaries;

--select employees.first_name, salaries.salary from employees 
--inner join salaries on salaries.emp_no = employees.emp_no
--where salaries.salary = (Select  Max(salaries.salary) from salaries) order by employees.first_name;


--Select  Max(salaries.salary) as salario from employees
--INNER join salaries on salaries.emp_no = employees.emp_no;


--select   Max(salaries.salary) as salario from employees 
--INNER JOIN salaries on salaries.emp_no = employees.emp_no group by employees.emp_no;
