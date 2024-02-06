--self join
-- in this join the table is joined to itself
-- self join is often create using inner join or left join 



select * from employees;

select concat(e.first_name,' ',e.last_name) as employee,
concat(m.first_name,' ',m.last_name) as manager
from employees e  inner join employees m on e.manager_id=m.employee_id order by manager;

