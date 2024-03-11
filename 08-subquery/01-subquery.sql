---sql in subquery ADD
use hr;
select * from departments where location_id=1700;




-- fetching of the employees from the  1,3,9,10,11
select employee_id,first_name,last_name
from employees
where department_id in (1,39,10,11)
order by first_name,last_name;



-- fetching of the  employees based on location
select employee_id,first_name,last_name
from employees
where department_id in (select department_id from departments where location_id=1700);


-- fetching the details of the employee having the max-salary
select * from employees where salary= (select max(salary) from employees);

-- fetching the deatils of the employees who is having the salary above the average

select * from employees
where salary > (select avg(salary) from employees) order by employee_id;

-- select the departments which has atleast has employees has earnging more than 10,000;
select * from department_name;


SELECT 
    department_name
FROM
    departments d
WHERE
    EXISTS( SELECT 
            1
        FROM
            employees e
        WHERE
            salary > 10000
                AND e.department_id = d.department_id)
ORDER BY department_name;
