-- inserting of the new record 
INSERT INTO membership (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender
)
VALUES (
    '2021-10-18',
    '2021-11-18',
    '2021-11-01 08:56:01',
    '2021-11-01 09:20:12',
    NULL,
    'Jhon',
    'Doe',
    19.99,
    12,
    Lower('DivErs')
);


select * from membership;


-- fetching of the records that are havnig the last name length less than 4 
select * from membership where length(last_name) < 4;


-- adding of the another user 
INSERT INTO membership (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender
)
VALUES (
    '2021-05-02',
    NULL,
    '2021-06-05 11:52:25',
    '2021-06-05 11:58:08',
    NULL,
    'test',
    'one',
    199.99,
    1,
    'male   '
);


select * from membership;

delete from membership where id = 6;


select id,gender,length(gender) from membership;