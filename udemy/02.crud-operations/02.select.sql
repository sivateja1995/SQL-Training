-- Active: 1706804737031@@127.0.0.1@3306@online_shop
-- selection of the tables 

show tables;

show tables;

use sales_example;


-- fetching of the products 
select * from products;

-- using and or sales key word
select * from sales
where (is_disputed is true) and (volume > 500);