-- Active: 1711887556119@@127.0.0.1@5432@sales_example
create database sales_example;

use sales_example;
drop table sales_table;
-- 1.0 created the table sales_table mysql
create table
    sales (
        id int primary key auto_increment,
        date_created datetime DEFAULT (current_date),
        date_fulfilled date,
        customer_name varchar(300) not null,
        product_name varchar(300) not null,
        volume numeric(10, 3) not null check (volume >= 0),
        is_recurring boolean default false,
        is_disputed boolean default false
    );

--- 1.1 creation of the sales_tables for the postgres
create table
    sales (
        id  SERIAL  primary key,
        date_created TIMESTAMP DEFAULT (current_date),
        date_fulfilled date,
        customer_name varchar(300) not null,
        product_name varchar(300) not null,
        volume numeric(10, 3) not null check (volume >= 0),
        is_recurring boolean default false,
        is_disputed boolean default false
    );

-- inserting of the data 
insert into sales (
    customer_name,
    product_name,
    volume,
    is_recurring
    
) values (
    'SIVA TEJA',
    'A BOOK',
    12.99,
    TRUE
);


select * from sales;