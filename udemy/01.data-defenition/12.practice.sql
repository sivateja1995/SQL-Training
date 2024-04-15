-- Active: 1706804737031@@127.0.0.1@3306@talently
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
create table products(
    product_name varchar(300),
    price float(5,2),
    description text,
    amount_in_stock int,
    product_image varchar(300)
);


