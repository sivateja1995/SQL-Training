--- deleting of the  values from the table 
select count(*) from dependents where dependent_id=16;


select * from dependents;


insert into dependents (first_name,last_name,relationship,employee_id) values ('xxx','xxx','xxx',192);
insert into dependents (first_name,last_name,relationship,employee_id) values ('werwerw','werwrwrwr','werwrw',192);

delete from dependents where dependent_id =34;
select * from dependents;


--- deleting of the  dependent 
delete from dependents where dependent_id =35;
