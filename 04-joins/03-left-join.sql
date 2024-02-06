-- using the left join for the linking of the tables

-- in  inner join eliminates the rows which are not matching with other tables
-- in left join will still show the 

-- joining of the  locations with the country

select c.country_name,c.country_id,l.country_id,l.street_address,l.city
from countries as c 
left join locations as l on l.country_id = c.country_id
where c.country_id in ('US', 'UK', 'CN');



-- selecting the country name with country 
select country_name
from countries as c 
left join locations as l on l.country_id = c.country_id
where l.location_id is NULL
order by c.country_name;


--- selecting of the three tables 
select r.region_name,c.country_name,l.city,l.street_address
from regions r 
left join countries c  on c.region_id = r.region_id
left join locations l on l.country_id = c.country_id;






