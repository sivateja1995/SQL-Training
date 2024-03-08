-- logical operators all, any, exists,some, AND,OR,between, in, like, is null & not null

use hr;
--using of the or operator
select first_name,last_name,salary from employees where salary = 7000 or salary = 8000;


select * from employees;

-- using null operator
select first_name,last_name from employees where manager_id is null;


--- using the in operator
select * from employees where department_id in (8,9) order by employee_id;


-- using the like operator
-- this is used to check field similar not 100% match especially for the presence of  substring in string like MATCH
select * from employees where first_name like 'siva'; 



-- using of the any,all & exists 

-- showing of the dependents 

select * from employees e where exists(select true from dependents d  where d.employee_id = e.employee_id);



--- applying of the and operator
select * from jobs;


--- fetching the  employees who are joined in the year 1997 or 1998
select employee_id,first_name,last_name,salary,hire_date from employees where year(hire_date) =1998 or year(hire_date)=1999 order by hire_date;

