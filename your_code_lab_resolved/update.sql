USE CARS_COMPANY_SALES;

update salesperson 
SET store = 'Miami'
where staff_id = '00005';

update customers
set email = 'ppicasso@gmail.com'
where cust_id = '10001';

update customers
set email = 'lincoln@us.gov'
where cust_id = '20001';

update customers
set email = 'hello@napoleon.me'
where cust_id = '30001';