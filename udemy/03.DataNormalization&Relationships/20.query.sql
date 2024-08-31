select e.first_name,e.last_name,p.title from employees as e
left join project_employee as ep on ep.employee_id = e.id 
left join projects as p on p.id = ep.project_id; 