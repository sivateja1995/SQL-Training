-- order by 

use hr;
-- listing of the employees
select employee_id,first_name,last_name,hire_date,salary from employees;


-- sorting of the employees by first_name
select employee_id,first_name,last_name,hire_date,salary from employees order by hire_date desc;


-- sorting with multiple columns
select employee_id,first_name,last_name,hire_date,salary from employees order by first_name, last_name desc;

-- sorting salary of the employees from high to low ;
select employee_id,first_name,last_name,hire_date,salary from employees order by salary desc;


-- sort by hire dates 
select employee_id,first_name,last_name,hire_date,salary from employees  order by hire_date desc;