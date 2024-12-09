-- function for the like 
select first_name like 'Max', first_name from membership;


-- using the space character where first letter is J 
select first_name from membership where first_name like 'J%';


-- 