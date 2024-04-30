-- Active: 1714461554180@@127.0.0.1@5432@admin
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
        id SERIAL primary key,
        date_created TIMESTAMP DEFAULT (current_date),
        date_fulfilled date,
        customer_name varchar(300) not null,
        product_name varchar(300) not null,
        volume numeric(10, 3) not null check (volume >= 0),
        is_recurring boolean default false,
        is_disputed boolean default false
    );

-- inserting of the data 
insert into
    sales (customer_name, product_name, volume, is_recurring)
values
    ('SIVA TEJA', 'A BOOK', 12.99, TRUE);

-- inserting using another query
insert into
    sales (
        date_created,
        date_fulfilled,
        customer_name,
        product_name,
        volume
    )
values
    (
        '2021-12-09',
        '2021-12-17',
        'Company Z',
        'A truck',
        109.0
    );

-- inserting of the more data
INSERT INTO sales (
  date_created,
  date_fulfilled,
  customer_name,
  product_name,
  volume,
  is_disputed,
  is_recurring
)
VALUES (
  '2022-01-18',
  '2022-03-11',
  'Company A',
  'A Nice Product',
  489.99,
  FALSE,
  TRUE
), (
  '2022-01-18',
  '2022-05-01',
  'Company B',
  'Video Game Collection',
  3859.12,
  FALSE,
  FALSE
), (
  '2021-12-05',
  NULL,
  'Company C',
  'Daily News Summary',
  4.99,
  FALSE,
  TRUE
), (
  '2021-12-05',
  '2021-12-07',
  'Company A',
  'Good-looking carpet',
  1099.82,
  TRUE,
  FALSE
), (
  '2022-02-21',
  '2022-02-24',
  'Max Schwarz',
  'Lord of the Rings Collection',
  69.99,
  FALSE,
  FALSE
), (
  '2021-10-14',
  '2022-02-21',
  'Max Schwarz',
  'Lord of the Rings Movies',
  25.99,
  FALSE,
  FALSE
), (
  '2022-06-01',
  NULL,
  'Max Schwarz',
  'Another book',
  8.99,
  FALSE,
  FALSE
), (
  '2021-08-17',
  '2021-09-12',
  'Company D',
  'Vehicle Services',
  4999.99,
  TRUE,
  TRUE
), (
  '2021-03-12',
  '2022-06-19',
  'Company D',
  'Vehicle Fleet',
  280000,
  FALSE,
  FALSE
);


--- wrong data
INSERT INTO sales (
  date_created,
  date_fulfilled,
  customer_name,
  product_name,
  volume
)
VALUES (
  '2021-12-09',
  '2021-12-17',
  'Company Z',
  'A Tuck',
  109.0
);



select * from sales;


-- updating of the wrong value
update sales
set product_name = 'a-truck',
volume = volume * 1000
where id=13;


select * from sales where id=13;


--deleting of the data from the table 
delete from sales
where id=13;

