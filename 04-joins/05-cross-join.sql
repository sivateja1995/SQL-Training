-- cross join of the tables 
-- cross join give cartesian joins and combinations
use hr;
-- creation of the sales organization 
create table sales_organization(
    sales_org_id int primary key,
    sales_org varchar (255)
);

--creation of the sales channel
create table sales_channel(
    channel_id int primary key,
    channel varchar (255)
);


-- inserting into the sales_organization 
insert into sales_organization (sales_org_id,sales_org) values(1,'Domestic'),(2,'Export');

-- inserting into the values of the sales_channel
insert into sales_channel (channel_id,channel) values (1,'Wholesale'),(2,'Retail'),(3,'eCommerce'),(4,'TV Shopping');

use hr;
-- creation of the cross join 
select sales_org,channel from sales_organization cross join sales_channel;


-- simple select 
SELECT
	sales_org,
	channel
FROM
	sales_organization,
	sales_channel;

--show TABLes
show tables;