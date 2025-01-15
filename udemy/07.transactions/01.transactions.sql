-- Active: 1723285658122@@127.0.0.1@5432@transactions
-- what are transactions ?
create database transactions;

-- creation of the customers table
create table customers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

-- creation of the orders table
create table orders (
    id SERIAL PRIMARY KEY,
    amount_billed NUMERIC(5, 2),
    customer_id int REFERENCES customers
);

-- inserting of the data
insert into
    customers (first_name, last_name, email)
values (
        'Maria',
        'Jones',
        'maria@test.com'
    );

insert into
    orders (amount_billed, customer_id)
values (103.12)

-- checking  customers table
select * from customers;

-- checking of the orders table
select * from orders;

--!! customers table data added but in orders table didn't ---