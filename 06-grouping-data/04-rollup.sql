use hr;
-- roll up 
-- roll up is used to generate the multiple grouping sets. 

select * from inventory;

select warehouse, sum(quantity) 
from inventory
group by  (warehouse);

-- correct way to use the rollup is by using the rollup;
SELECT 
    warehouse, SUM(quantity)
FROM
    inventory
GROUP BY warehouse WITH ROLLUP;


-- getting the count of warehouse and products 

select warehouse,product,sum(quantity)
from inventory 
group by warehouse,product with rollup;
 



