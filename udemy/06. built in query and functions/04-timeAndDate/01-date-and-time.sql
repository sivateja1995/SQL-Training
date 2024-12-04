-- extraction of the month time stamp
select extract( month from last_checkin ) from membership;

-- extraction of the day from membership last_checkin table
select extract( day from last_checkin ) from membership;

-- fetching of the minutes
select
    extract(
        minute
        from last_checkin
    ) last_checkin_minute,
    last_checkin
from membership;

-- fetching of the weekday of the last_checkin
select extract( dow from last_checkin ) from membership;

-- fetching of the time and date separately (mysql)
select convert(last_checkin, DATE), convert(last_checkin, TIME)
from membership;

-- fetching of the time and date from the lastcheckin
select
    last_checkin::TIMESTAMP::DATE,
    last_checkin::TIMESTAMP::TIME
from membership;