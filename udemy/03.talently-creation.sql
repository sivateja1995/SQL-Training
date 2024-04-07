-- Active: 1711887556119@@127.0.0.1@5432@talently
-- showing of the database in postgress
select
    pg.datname
from
    pg_database as pg;

-- creating users for mysql
create database if not exists talently;

-- viewing of the tables in mysql
show tables;

-- creating for the postgres sql
create database talently;

-- list the tables in the database in postgresql
select
    tablename
from
    pg_catalog.pg_tables
where
    schemaname = 'public';

-- creation of the table for mysql
create table
    if not exists users (
        full_name VARCHAR(225),
        yearly_salary INT,
        current_status ENUM ('employed', 'unemployed', 'self-employed')
    );

-- checking of the talently database 
select
    *
from
    users;

-- users table in the postgres sql
-- 01. creation of the type first before assigning to the users table 
create type employment_status as enum ('employed', 'self-employed', 'unemployed');

create table
    users (
        full_name VARCHAR(225),
        yearly_salary INT,
        current_status employment_status
    );

-- 02.creation of the employers for mysql 
create table
    if not exists employers (
        company_name VARCHAR(225),
        company_address VARCHAR(450),
        yearly_revenue NUMERIC(7, 3),
        is_hiring BOOLEAN
    );

-- 2.1 creation of the employers table for the postgres
create table
    employers (
        company_name VARCHAR(225),
        company_address VARCHAR(450),
        yearly_revenue NUMERIC(7, 3),
        is_hiring BOOLEAN
    );

-- 3.0 creation of the conversation table 
create table
    if not exists conversation (
        user_name varchar(200),
        employer_name varchar(200),
        message text
    );

-- 3.1 creation of the conversation table for the postgres
create table
    conversation (
        user_name varchar(200),
        employer_name varchar(200),
        message text
    );

commit;

-- altering of the conversation table for adding the date_sent 
-- 3.1 for mysql alter conversation
alter table conversation
add column date_sent TIMESTAMP;

commit;