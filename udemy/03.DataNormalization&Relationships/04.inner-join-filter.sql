select u.first_name, u.last_name, a.street, a.house_number, c.name as cityName
from
    users as u
    inner join address as a on u.address_id = a.id
    inner join cities as c on c.id = a.city_id
    where lower(c.name) like '%berlin%';