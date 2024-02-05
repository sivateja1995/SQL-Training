-- using the left join for the linking of the tables

-- in  inner join eliminates the rows which are not matching with other tables
-- in left join will still show the 

-- joining of the  locations with the country

select c.country_name,c.country_id,l.country_id,l.street_address,l.city
from countries as c 
left join locations as l on l.country_id = c.country_id;




