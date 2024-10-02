-- count

-- fetching of the bookings
select * from bookings;
--count of the bookings
select count(*) from bookings;


select count(amount_tipped) from bookings;

select count(*) from bookings


-- couting of the distinct dates 
select count(distinct booking_date) from bookings;