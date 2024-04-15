-- Active: 1706804737031@@127.0.0.1@3306@talently
-- inserting of the violating data. 


desc users;
insert into users(full_name,current_status) values('mallka arjun rao','self-employed');
insert into users(full_name,current_status,yearly_salary) values
('Ajay Diwakar','unemployed',null);