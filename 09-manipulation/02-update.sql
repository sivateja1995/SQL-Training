update employees
set last_name = 'lopez'
where employee_id=192;


-- fetching of the employees details 
select * from employees where employee_id=192;


-- selectio of the dependents
select * from dependents where employee_id = 192; 


-- updating of the dependents 
update dependents set last_name = 'Lopez' where employee_id=192;