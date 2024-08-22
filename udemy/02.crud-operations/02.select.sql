-- Active: 1714461554180@@127.0.0.1@5432@admin
-- selection of the tables 
show tables;

show tables;

use sales_example;

-- fetching of the products 
select
    *
from
    sales;

-- using and or sales key word
select
    *
from
    sales
where
    (is_disputed is true)
    and (volume > 500);

--- selecting of the greater,smaller or ranges of the dates.
select
    *
from
    sales
where
    date_created > '2021-11-01'
    and date_created < '2022-05-01';


    -- using the between for the date range
    select * from sales
    where date_created between '2021-11-01' and '2022-05-01';


    