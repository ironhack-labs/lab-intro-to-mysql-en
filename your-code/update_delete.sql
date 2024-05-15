
USE lab_mysql;

-- Fix spelling mistake for Paige Turner store
UPDATE employees
SET Store = 'Miami'
WHERE Name = 'Paige Turner';

-- Update email addresses for customers
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE Name = 'Pablo Picasso';

UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE Name = 'Abraham Lincoln';

UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE Name = 'Napoléon Bonaparte';



-- Delete duplicated car entry (sooo I did not seet that car, so its not in my file but this is how I would delete it :) )
DELETE FROM cars
WHERE Car_id = 4;
