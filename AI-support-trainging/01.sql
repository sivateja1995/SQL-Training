show databases;


create database school;

use school;

drop table students;

-- creation of the students table 
create table students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
name varchar(300) not null,
age int not null check(age>0),
major varchar(300) not null	
);

-- checking of the tables
show tables;

select * from students;

insert into students (name,age,major) values ('sivateja',12,'MPC');


-- insertion of the multiple rows 
insert into students (name,age,major) values ('hari',11,'Bipc'),('krishna',12,'HEC');

insert into students (name,age,major) values ('remo',15,'MPC');