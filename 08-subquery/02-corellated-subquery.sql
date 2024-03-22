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
select employee_id,
    first_name,
    last_name,
    salary,
    department_id
from employees e
where salary > (
        select avg(salary)
        from employees
        where department_id = e.department_id
    )
order by department_id,
    first_name,
    last_name;
-- fetching of the average salary department wise with department name
select *
from employees;
select employee_id,
    first_name,
    last_name,
    department_name,
    salary, (
        select round(avg(salary), 0)
        from employees
        where department_id = e.department_id
    ) as avg_emp_salary
from employees e 
inner join departments as d
on d.department_id = e.department_id 
order by 
department_name,
first_name,
last_name;



SELECT 
    first_name, last_name, salary
FROM
    employees
WHERE
    salary >= ALL (SELECT 
            salary
        FROM
            employees
        WHERE
            department_id = 2)
ORDER BY salary;     


select * from employees where department_id=2;

select min(salary) from employees where department_id=2;


select * from employees where salary < all(select min(salary) from employees where department_id=2) order by salary desc;