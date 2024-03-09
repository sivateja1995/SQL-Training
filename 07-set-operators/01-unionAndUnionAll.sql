-- union operator combines result set of two or more select statements into a single result set. 
-- the following statements 


select first_name ,last_name
from employees
UNION 
select first_name,last_name
from dependents
order by last_name;

