select booking_date, sum(num_guests)
from bookings
GROUP BY
    booking_date;

-- checking of the payment methods
select p.name, sum(b.num_guests)
from
    payment_methods as p
    inner join bookings as b on p.id = b.payment_id
group by
    p.name
-- also need to merge the booking date wise
select b.booking_date, sum(b.num_guests) as guests, p.name
from
    payment_methods as p
    inner join bookings as b on p.id = b.payment_id
group by
    p.name,
    b.booking_date
order by b.booking_date desc;

select * from bookings;

-- booking counts by date
select booking_date, count(*)
from bookings
group by
    booking_date
having
    count(booking_date) > 0;