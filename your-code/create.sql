DROP DATABASE IF EXISTS cars;
CREATE DATABASE cars; 
USE cars;


#Table cars.cars
CREATE TABLE IF NOT EXISTS `cars`.`cars` (
  `id_car` INT AUTO_INCREMENT,
  `VIN` VARCHAR(17) NOT NULL,
  `manufacturer` VARCHAR(20) NOT NULL,
  `model` VARCHAR(20) NOT NULL,
  `year_` INT(4) NOT NULL,
  `color` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_car`));


#Table cars.customer
CREATE TABLE IF NOT EXISTS `cars`.`customer` (
  `id_customer` INT AUTO_INCREMENT,
  `customer_id` INT(15) NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `phone_num` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(40) NULL DEFAULT NULL,
  `address` VARCHAR(40) NULL DEFAULT NULL,
  `city` VARCHAR(20) NULL DEFAULT NULL,
  `state` VARCHAR(20) NULL DEFAULT NULL,
  `country` VARCHAR(20) NULL DEFAULT NULL,
  `postal_code` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_customer`));


  

#Table cars.salesperson
CREATE TABLE IF NOT EXISTS `cars`.`salesperson` (
  `id_salesperson` INT AUTO_INCREMENT,
  `staff_id` INT(15) NOT NULL,
  `salesperson_name` VARCHAR(20) NOT NULL,
  `store_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_salesperson`));

ALTER TABLE cars ADD INDEX idx_cars_VIN (VIN);

#Table cars.invoices
CREATE TABLE IF NOT EXISTS `cars`.`invoices` (
  `id_invoice` INT AUTO_INCREMENT,
  `invoice_id` INT(20) NOT NULL,
  `date_` DATE NULL DEFAULT NULL,
  `id_car` INT(17) NOT NULL,
  `id_customer` INT NOT NULL,
  `id_salesperson` INT NOT NULL,
  PRIMARY KEY (`id_invoice`),
  INDEX `fk_invoices_salesperson_idx` (`id_salesperson` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`id_car` ASC) VISIBLE,
  INDEX `fk_invoices_customer1_idx` (`id_customer` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salesperson`
    FOREIGN KEY (`id_salesperson`)
    REFERENCES `cars`.`salesperson` (`id_salesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`id_car`)
    REFERENCES `cars`.`cars` (`id_car`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customer1`
    FOREIGN KEY (`id_customer`)
    REFERENCES `cars`.`customer` (`id_customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

