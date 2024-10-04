SELECT table_name
from information_schema.tables
where
    table_catalog = 'restaurants'
    and table_schema = 'public';

select * from bookings;

-- getting avg amount tipped
select round(avg(amount_tipped), 2)
from bookings
where
    num_guests > 2
    and amount_billed > 20;
-- selection of the max seats and max guests
select max(b.num_guests), max(t.num_seats)
from bookings as b 
inner join tables as t on b.table_id  = t.id 
inner join payment_methods as p on b.payment_id  = p.id 
where t.num_seats < 5 and p.name = 'Cash';


--