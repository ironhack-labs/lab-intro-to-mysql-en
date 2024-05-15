INSERT INTO Cars (VIN, Manufacturer, Model, Year, Colour)
VALUES 
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
    
INSERT INTO Customers (Name, Phone_number, Email, Address, City, State, Country, Post_code)
VALUES 
    ('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO Employees (Name, Store)
VALUES 
    ('Petey Cruiser', 'Madrid'),
    ('Anna Sthesia', 'Barcelona'),
    ('Paul Molive', 'Berlin'),
    ('Gail Forcewind', 'Paris'),
    ('Paige Turner', 'Miami'),
    ('Bob Frapples', 'Mexico City'),
    ('Walter Melon', 'Amsterdam'),
    ('Shonda Leer', 'São Paulo');
    
INSERT INTO Invoices (Date, Car_id, Customer_id, Staff_id)
VALUES 
    ('2018-08-22', 7, 2, 4),
    ('2018-12-31', 8, 1, 6),
    ('2019-01-22', 9, 3, 8);


