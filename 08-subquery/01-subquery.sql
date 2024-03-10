---sql in subquery ADD
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