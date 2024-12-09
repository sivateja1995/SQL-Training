-- adding the interval
select * from membership;


-- postgres
-- first method to add the dates  for the postgres
select membership_start + 7, membership_start from membership;

-- adding the interval for the seven months
select membership_start as initial_date,(membership_start + interval '7 months')::TIMESTAMP::DATE as modified_date from membership;



-- 










-- second method using of the DATE_ADD method for mysql
select
from DATE_ADD (
        membership_start, interval 7 day
    )
from membership;