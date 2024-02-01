-- selection of the distinction
use hr;
select * from employees;


-- select distinct managers from employees;
select distinct manager_id from employees;


-- selecting the distict salary from the employees;
select DISTINCT salary from employees;

-- selecting the distinct job and salary 
select distinct job_id,salary 
from employees
order by job_id, salary desc;


-- checking total number fo the employyes count
select count(*) from employees;


-- checking of the distinct phone numbers
SELECT DISTINCT phone_number
from employees
order by phone_number;
