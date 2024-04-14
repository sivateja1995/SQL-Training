-- Active: 1706804737031@@127.0.0.1@3306@talently
-- adding the unique ids and primary key 
-- dropping of the tables from the mysql
drop table users;

drop table employers;

drop table conversation;

---1.1. adding of the unique and primary key for the users
--users table
create table
    users (
        id int primary key AUTO_INCREMENT,
        first_name varchar(300) not null,
        last_name varchar(300) not null,
        full_name varchar(601) generated always as(concat(first_name,' ',last_name)),
        yearly_salary int check (yearly_salary > 0),
        current_status enum ('self-employed', 'employed', 'unemployed')
    );

-- employers table 
create table
    employers (
        id int primary key AUTO_INCREMENT,
        company_name varchar(300) not null,
        company_address varchar(300) not null,
        yearly_revenue float check (yearly_revenue > 0),
        is_hiring BOOLEAN DEFAULT false
    );

-- conversations table 
create table
    conversations (
        id int primary key AUTO_INCREMENT,
        user_id int,
        employer_id int,
        message text not null
    );

-- 1.1 creation of the tables for the postgres
-- enum declaration for the postgres
create type employment_status as enum ('self-employed', 'employed', 'unemployed');

create table
    users (
        id serial  primary key,
        first_name varchar(300) not null,
        last_name varchar(300) not null
        full_name varchar(601) generated always as (concat(first_name,' ',last_name)) ,
        yearly_salary int check (yearly_salary > 0),
        current_status employment_status
    );

-- employers table 
create table
    employers (
        id serial primary key,
        company_name varchar(300) not null,
        company_address varchar(300) not null,
        yearly_revenue float check (yearly_revenue > 0),
        is_hiring BOOLEAN DEFAULT false
    );

-- conversations table 
create table
    conversations (
        id SERIAL primary key,
        user_id int,
        employer_id int,
        message text not null
    );