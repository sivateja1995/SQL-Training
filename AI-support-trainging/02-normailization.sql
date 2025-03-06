-- creating of the students table 
show databases;

use school;

show tables;


select * from students;


create database student_erp;
use student_erp;

-- creating of the students table


create table instructors(
    id int  PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) not NULL,
    email VARCHAR(300) not null UNIQUE,
    phone VARCHAR(300) not null UNIQUE
);


create table course{
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) not null UNIQUE,
}


drop table students ;
create table students(
    id int  PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) not NULL,
    email VARCHAR(300) not null UNIQUE,
    phone VARCHAR(300) not null UNIQUE,
    instructor_id int  REFERENCES instructor(id),
    course_id int  REFERENCES course(id)
);