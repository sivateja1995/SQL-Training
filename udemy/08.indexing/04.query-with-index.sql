-- checking of the performance
explain ANALYZE select * from users where salary > 12900;


explain analyze select * from addresses where street = 'Teststreet' and city = 'Munich';