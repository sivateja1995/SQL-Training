use hr;
-- limiting the employees .
-- limit will put the limit how many columns to be shown in the TABLE
-- offset will skip the number of the columns 
select employee_id,first_name,last_name
from employees
order by employee_id
limit 5
offset 15;


-- get the second highest salary from the employees 
select * from employees
order by salary desc
limit 1 offset 1;



-- the above gets failed if there are more than two people have same highes salary
select * from employees order by salary desc;

-- entering the duplicate entry for the 207 id 

insert into employees(first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
values ('siva','teja','sivateja1034@gmail.com','800.889.8404','2004-06-01',4,24000.00,100,9);



-- now removing the  duplicates of the salary and fetching of the second highest salary 
select DISTINCT salary from employees
order by salary desc
limit 1 offset 1;


-- fetching the details of the second highest salary employees details removing the duplicates in salary

select * from employees where salary =(
select DISTINCT salary from employees
order by salary desc
limit 1 offset 1);


