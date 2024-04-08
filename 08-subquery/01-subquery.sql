---sql in subquery ADD
use hr;
select *
from departments
where location_id = 1700;
-- fetching of the employees from the  1,3,9,10,11
select employee_id,
    first_name,
    last_name
from employees
where department_id in (1, 39, 10, 11)
order by first_name,
    last_name;
-- fetching of the  employees based on location
select employee_id,
    first_name,
    last_name
from employees
where department_id in (
        select department_id
        from departments
        where location_id = 1700
    );
-- fetching the details of the employee having the max-salary
select *
from employees
where salary = (
        select max(salary)
        from employees
    );
-- fetching the deatils of the employees who is having the salary above the average
select *
from employees
where salary > (
        select avg(salary)
        from employees
    )
order by employee_id;
-- select the departments which has atleast has employees has earnging more than 10,000;
select *
from department_name;
SELECT department_name
FROM departments d
WHERE EXISTS(
        SELECT 1
        FROM employees e
        WHERE salary > 10000
            AND e.department_id = d.department_id
    )
ORDER BY department_name;
--fetching the employees who are having more than the avg salary
SELECT MIN(salary)
FROM employees
GROUP BY department_id
ORDER BY MIN(salary) DESC;
--- get employees who are above the min salary;
select employee_id,
    first_name,
    last_name
from employees
where salary >= all(
        SELECT MIN(salary)
        FROM employees
        GROUP BY department_id
        ORDER BY MIN(salary) DESC
    )
order by first_name,
    last_name;
-- query for the fetching of the max salary by group wise
select *
from employees
select department_id,
    max(salary)
from employees
group by department_id;
-- fetching all the employees having the salary equal or above the max salary
select employee_id,
    first_name,
    last_name,
    salary
from employees
where salary >= some(
        select max(salary)
        from employees
        group by department_id
    );
--- checking employees if the salary difference  for the employees
select employee_id,
    first_name,
    last_name,
    salary,
    (
        select round(avg(salary), 0)
        from employees
    ) as average_salary,
    (
        salary -
        (select Round(avg(salary), 0)
        from employees)
    ) as difference
from employees
order by first_name,
    last_name;