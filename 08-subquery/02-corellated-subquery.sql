-- correlated subQuery
--listing the all the employees who are above the average salary
select employee_id,
    first_name,
    last_name,
    salary
from employees
where salary > (
        select avg(salary)
        from employees
    );


-- find all employees whose salary is higher than the average salary of the employees in their departments

select employee_id,first_name,last_name,salary,department_id 
from employees e
where salary > (
    select avg(salary) from employees where department_id= e.department_id
) order by 
department_id,
first_name,
last_name;