

-- cross join 
-- without filter 
select * from users as u cross join address  as a ;


-- with filter 
select * from users as u cross join  address as a where u.address_id= a.id;