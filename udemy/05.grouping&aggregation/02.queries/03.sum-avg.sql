-- sum of the revenue
select sum(b.amount_billed) from bookings as b;

-- avg for the guests 
select round(avg(num_guests),2) from bookings;