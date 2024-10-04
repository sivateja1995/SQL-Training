select booking_date , sum(num_guests)
from bookings GROUP BY booking_date;