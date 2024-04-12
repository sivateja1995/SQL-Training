-- union operator combines result set of two or more select statements into a single result set. 
-- the following statements 


select first_name ,last_name
from employees
UNION 
select first_name,last_name
from dependents
order by last_name;


-- fetching of the employees from the department_location id 1700

select employee_id,first_name,last_name
from employee
where department_id in (
    select department_id 
    from departments
    where location_id=1700
)
order by first_name,last_name;


