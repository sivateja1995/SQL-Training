select
    amount_billed,
    case
        when amount_billed > 30 then 'good day'
        when amount_billed > 15 then 'Normal Day'
        else 'Bad Day'
    end
from orders;

-- weed days for the postgres
select
    weekday_nr,
    case
        when weekday_nr = 1 then 'Monday'
        when weekday_nr = 2 then 'Thuesday'
        when weekday_nr = 3 then 'Wednesday'
        when weekday_nr = 4 then 'Thursday'
        when weekday_nr = 5 then 'Friday'
        when weekday_nr = 6 then 'Saturday'
        Else 'Sunday'
    end
from (
        select extract(
                dow
                from last_checkin
            ) + 1 as weekday_nr
        from membership
    ) as weekday_number;