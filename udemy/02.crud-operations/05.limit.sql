-- Active: 1723285658122@@127.0.0.1@5432@sales_example

select *
from sales
where
    is_disputed is FALSE
order by volume desc
limit 3;