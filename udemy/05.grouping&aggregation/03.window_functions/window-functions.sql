

select booking_date, amount_tipped, sum(amount_tipped) over() from bookings;



select booking_date,amount_tipped, sum(amount_tipped) over(partition by booking_date) from bookings;


-- ranking 