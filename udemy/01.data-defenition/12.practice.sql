-- Active: 1711887556119@@127.0.0.1@5432@online_shop
-- creation of the online shop 
-- tables 01.products 
-- products.product_name
-- products.price
-- products.description
-- products.amount_in_stock
-- products.images (image path as string)
--- task 1.create new database for the shop
--  task 2.add a table for the products
--  task 3.choose appropriate column name and data types
-- task 4.update table and add sensible constrains
-- task 5.update table and add primary key
-- task 1 solution 


create database online_shop;
use online_shop;

-- creation of the table products 
-- 1.0 for the creation of the products table for mysql
create table
    products (
        product_name varchar(300),
        price float (5),
        description text,
        amount_in_stock int,
        product_image varchar(300)
    );

-- INSERTING INTO THE VALUES INTO THE TABLE 
insert into
    products (
        product_name,
        price,
        description,
        amount_in_stock,
        product_image
    ) VALUES (
        'A book',
        100.34,
        'this is the simple text book for the store',
        10,
        'uploads/images/book.jpg'
    );


    insert into
    products (
        product_name,
        price,
        description,
        amount_in_stock,
        product_image
    ) VALUES (
        'Soap',
        10,
        'bathing soap',
        112,
        'uploads/images/hamam.jpg'
    );


    -- task 5 adding of the constrains mysql
    alter table products
    modify column product_name varchar(500) not null,
    MODIFY column amount_in_stock int not null check(amount_in_stock >= 0),
    MODIFY column price float(5,2) not null check(price>0),
    modify column description text not null; 

-- altering of the table for the postgres
 alter table products
 alter column product_name set not null,
 alter column price set not null,
 alter column description set not null,
 add constraint price_positive check(price>0),
 add constraint amount_in_stock_positive check(amount_in_stock >=0);

 select * from products;



-- task 6 adding of the primary key mysql
alter table products 
add column id int primary key auto_increment;

-- adding of the new column for the postgres
alter table products
add COLUMN id serial  primary key;


select * from products;