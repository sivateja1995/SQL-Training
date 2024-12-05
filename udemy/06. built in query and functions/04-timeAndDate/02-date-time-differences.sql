-- calculating of the time difference
select last_checkout - last_checkin from membership;

-- FOR THE MYSQL
select timestampdiff (
        MINUTE, last_checkout - last_checkin
    )
from membership;

SELECT membership_end - membership_start from membership;

select EXTRACT(
        DAY from max(membership_end) - min(membership_start)
    )
from membership;