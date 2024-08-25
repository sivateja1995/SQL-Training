delete from address where id = 12;

select * from address;

select * from cities;

select * from users as u
left join address as a on a.id = u.address_id
left join cities as c on c.id = a.city_id;

delete from cities where id = 6;

-- trying to delete the address where id =5
delete from address where id = 5;

select * from users;