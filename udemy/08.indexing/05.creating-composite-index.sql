-- creating of the composite index for the addresses table 
create index multiaddr on addresses(street,city);


explain ANALYSE select * from addresses where street = 'Teststreet' and city = 'Munich';;