-- where clause 

select employee_id,first_name,last_name,salary from employees where salary>10000 order by salary desc;


-- fetching the employees with less than average salary;

-- calculating the average salary 
select avg( distinct salary) from employees;

-- fetching of the employees with less than average salary
select employee_id,first_name,last_name,salary from employees where salary < (select avg( distinct salary) from employees) order by salary desc;



---- fetching people joined after 1999
select employee_id,first_name,last_name,hire_date,salary from employees where year(hire_date) > 1999;


--- using the between operator
select * from employees where  year(hire_date) between 1995 and 1999 order by hire_date desc;





