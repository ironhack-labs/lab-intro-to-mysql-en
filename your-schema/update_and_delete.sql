/*updating */
select * from customers;

update customers 
set email = 'ppicasso@gmail.com'
where customer_id = 1;

update customers 
set email = 'lincoln@us.gov'
where customer_id = 2;

update customers 
set email = 'hello@napoleon.me'
where customer_id = 3;


select * from customers;

/*Deleting*/

DELETE FROM cars WHERE car_id = 6;

select * from cars;