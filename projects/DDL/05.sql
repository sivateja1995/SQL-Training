-- having, joins , group by


-- contry wise count of customers
SELECT c.country, count(c.customer_id)
FROM customers c
group by
    c.country
order by count(c.customer_id) desc; 


SELECT c.country, count(c.customer_id)
FROM customers c
group by
    c.country
having count(c.customer_id) > 10
order by count(c.customer_id) desc; 
