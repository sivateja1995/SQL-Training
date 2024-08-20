-- city and users 
select c.name,u.first_name, u.last_name as name from cities as c
left join address as a on a.city_id = c.id
left join users as u on u.address_id = a.id ;