-- Active: 1706804737031@@127.0.0.1@3306@hr
-- fetching of the databases from the postgres
select
    pg.datname
from
    pg_database as pg;

--- DDO (DATA DEFINITION OPERATIONS)
-- data definition operations
-- 1. create database (CREATE DATABASE)
-- 2. creating tables (CREATE TABLE)
-- 3. updating database (ALTER DATABASE)
-- 4. updating tables (ALTER TABLE)
-- dropping of the database;
drop database talently;

-- creation of the database;
-- !! NOTE: `if not exists` statement is not available in the postgres  
create database if not exists talently;

-- creation of the tables 
-- employers(companyName,address,yearlyRevenue,ishiring)
-- users  (name,yearlySalary,status,employer)
-- conversation(user,employer,message,date sent)
-- creating the number table
create table
    if not exists number_table (
        int_value INT,
        dec_value DECIMAL(10, 10),
        float_value FLOAT (10, 10)
    );

-- inserting the values into the table 
insert into
    number_table (int_value, dec_value, float_value) value (1 / 3, 1 / 3, 1 / 3);

select
    *
from
    number_table;

alter table number_table 
add column isOk BOOLEAN default true;


-- checking of the table 
select * from number_table;

