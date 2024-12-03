-- select  sum(price*billing_frequency) as annualRevenue from membership;

-- ceil()
-- floor()
-- round()
-- trunc() -- truncate()

select
    consumption,
    round(consumption, 1) as rounded_consumption
from membership;


