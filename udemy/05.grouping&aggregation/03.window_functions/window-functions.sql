

select booking_date, amount_tipped, sum(amount_tipped) over() from bookings;