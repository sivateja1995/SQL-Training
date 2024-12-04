-- string functions
-- concat 
select  concat(first_name,' ',last_name) from membership;


-- special query only for the postgres
select first_name ||' '|| last_name from membership;


select concat('$ ', price)
from membership;