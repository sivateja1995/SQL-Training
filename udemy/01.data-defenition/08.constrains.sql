-- Active: 1711887556119@@127.0.0.1@5432@talently
-- updating of the constrains 

desc users;

-- 1.0 updating the users table in mysql
alter table users
modify column full_name varchar(300) not null,
modify column current_status ENUM ('employed', 'unemployed', 'self-employed') not null;


--1.1 updating for the postgres
alter table users
alter column full_name set not null,
alter column current_status set not null;


-- 2.0 adding the check constrain table
update users 
set yearly_salary=NULL
where yearly_salary=0;

alter table users
modify column yearly_salary int check(yearly_salary>0);


-- 2.1 adding the check constrain for the users postgres
update users
set yearly_salary=NULL
where yearly_salary=0;


alter table users
add constraint yearly_salary_positive check (yearly_salary>0);


