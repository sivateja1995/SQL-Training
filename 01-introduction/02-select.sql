use hr;

show tables;
select * from departments;
select * from regions;
select * from jobs;

-- selecting of the employees
select * from employees;


-- counting total employees
select count(*) as total from employees;

-- selecting people without managers;
select * from employees where manager_id is null;
	-- only steven king is without any manager assigned

-- selection of the employee_id,first_name,last_name,hire_date
select  first_name,last_name,employee_id,hire_date from employees;





