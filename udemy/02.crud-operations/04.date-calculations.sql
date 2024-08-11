-- Active: 1723285658122@@127.0.0.1@5432@sales_example
-- calculations of the date.

-- postgres 
-- all the sales that have been fulfilled
select * from sales
where date_fulfilled is not null;

-- select sales that are full filled less than 5 in date of created;
select * from sales
where extract(day from date_fulfilled - date_created) <=5;

