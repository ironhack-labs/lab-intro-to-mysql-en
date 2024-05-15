
USE lab_mysql;

-- Create Cars table
CREATE TABLE Cars (
    Car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20) UNIQUE,
    Manufacturer VARCHAR(20),
    Model VARCHAR(20),
    Year INT,
    Colour VARCHAR(20)
);

-- Create Customers table
CREATE TABLE Customers (
    Customer_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Phone_number VARCHAR(20),
    Email VARCHAR(40),
    Address VARCHAR(40),
    City VARCHAR(20),
    State VARCHAR(20),
    Country VARCHAR(20),
    Post_code VARCHAR(20)
);

-- Create Employees table
CREATE TABLE EMPLOYEES (
    Staff_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Store VARCHAR(20)
);

-- Create Invoices table
CREATE TABLE INVOICES (
    Invoice_no INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Car_id INT,
    Customer_id INT,
    Staff_id INT,
    FOREIGN KEY (Car_id) REFERENCES Cars(Car_id),
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
    FOREIGN KEY (Staff_id) REFERENCES Employees(Staff_id)
);



   /* ALTER TABLE example_table ADD COLUMN age INT;
    INSERT INTO example_table (name, email, age) VALUES ('John Doe', 'john.doe@example.com', 30);
    UPDATE example_table SET email = 'new.email@example.com' WHERE id = 1; */


