-- users

-- users with different cities are made into city

select u.id, u.first_name, u.last_name, c.name
from
    users as u
    left join address as a on a.id = u.address_id
    left join cities as c on c.id = a.city_id
where
    c.name like '%Berlin%'
union
select u.id, u.first_name, u.last_name, c.name
from
    users as u
    left join address as a on a.id = u.address_id
    left join cities as c on c.id = a.city_id
where
    c.name like '%vis%';


-- aggregated operations on the  above union 
select distinct name from (
select u.id, u.first_name, u.last_name, c.name
from
    users as u
    left join address as a on a.id = u.address_id
    left join cities as c on c.id = a.city_id
where
    c.name like '%Berlin%'
union
select u.id, u.first_name, u.last_name, c.name
from
    users as u
    left join address as a on a.id = u.address_id
    left join cities as c on c.id = a.city_id
where
    c.name like '%vis%')

