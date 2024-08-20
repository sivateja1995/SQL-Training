-- Active: 1723285608966@@127.0.0.1@3306@relations

-- mysql

select * from address;
-- inner join
select *
from address as a
    inner join users as u on a.id = u.address_id;

-- left join
select *
from address as a
    left join users as u on a.id = u.address_id;

-- notes
-- 01. with left join you include both the tables and non matching data shown as null;
-- 02. with inner join you are only fetching the table where both values are matching despite changing of the base table

-- left join all the tables
select *
from
    address as a
    left join users as u on u.address_id = a.id
    left join cities as c on c.id = a.city_id;

    