--- deleting of the  values from the table 
select count(*)
from dependents
where dependent_id = 16;
select *
from dependents;
insert into dependents (first_name, last_name, relationship, employee_id)
values ('xxx', 'xxx', 'xxx', 192);
insert into dependents (first_name, last_name, relationship, employee_id)
values ('werwerw', 'werwrwrwr', 'werwrw', 192);
delete from dependents
where dependent_id = 34;
select *
from dependents;
--- deleting of the  dependent 
delete from dependents
where dependent_id = 35;
---- for the fetching of the 
select first_name,
    last_name,
    hire_date,
    case
        (2000 - YEAR(hire_date))
        when 1 then '1 years'
        when 3 then '3 years'
        when 1 then '5 years'
        when 3 then '10 years'
        when 1 then '15 years'
        when 3 then '20 years'
        when 1 then '25 years'
        when 3 then '30 years'
    end aniversary
from employees
order by first_name;