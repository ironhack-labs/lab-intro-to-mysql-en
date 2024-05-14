CREATE DATABASE lab_mysql;
use lab_mysql;

CREATE TABLE cars (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
    identification_number VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    car_year INT,
    color VARCHAR(50) 
    );

DESCRIBE cars;

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255) not null, 
    phone_number INT, 
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state_rovince VARCHAR(50),
    country VARCHAR(50),
    zip_code INT
    );
    
CREATE TABLE salespersons  (
	salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT NOT NULL, 
    name VARCHAR(255) NOT NULL, 
    store VARCHAR(255) NOT NULL
    );
    
CREATE TABLE invoices (
	invoice_id INT AUTO_INCREMENT PRIMARY KEY, 
    invoice_number INT NOT NULL, 
    invoice_date DATE, 
    car_id INT, 
    customer_id INT, 
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id), 
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
    );
    
show tables;