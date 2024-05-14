CREATE DATABASE IF NOT EXISTS `lab_cars`

USE `lab_cars`;

-- cars
DROP TABLE IF EXISTS `cars`;

CREATE TABLE IF NOT EXISTS `cars` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `vin` varchar(20) NOT NULL,
  `model_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `color` varchar(16) NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `man_id` (`model_id`)
);

-- countries
DROP TABLE IF EXISTS `countries`;

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  PRIMARY KEY (`id`)
)

-- customers
DROP TABLE IF EXISTS `customers`;

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `phone` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `province` tinytext NOT NULL,
  `country` int(11) NOT NULL,
  `postal` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  KEY `country` (`country`)
); 

-- invoices
DROP TABLE IF EXISTS `invoices`;

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` tinytext NOT NULL,
  `invoice_date` date NOT NULL,
  `car_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_number` (`invoice_number`(32)) USING HASH,
  KEY `car_id` (`car_id`),
  KEY `customer_id` (`customer_id`),
  KEY `seller_id` (`seller_id`)
);

-- manufacturers
DROP TABLE IF EXISTS `manufacturer`;

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `man_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  PRIMARY KEY (`man_id`),
  UNIQUE KEY `name` (`name`(32)) USING HASH
);

-- models
DROP TABLE IF EXISTS `model`;

CREATE TABLE IF NOT EXISTS `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `man_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `variant` tinytext DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  KEY `man_id` (`man_id`)
);

-- sales
DROP TABLE IF EXISTS `sales`;

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(5) DEFAULT NULL,
  `name` tinytext NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_id` (`staff_id`),
  KEY `store_id` (`store_id`)
);

-- stores
DROP TABLE IF EXISTS `stores`;

CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_name` (`store_name`(32)) USING HASH
)

-- foreign keys

ALTER TABLE `cars`
  ADD CONSTRAINT `cars_fk` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`);

ALTER TABLE `customers`
  ADD CONSTRAINT `customers_fk` FOREIGN KEY (`country`) REFERENCES `countries` (`id`);

ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_fk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `invoices_fk_2` FOREIGN KEY (`seller_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `invoices_fk_3` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

ALTER TABLE `model`
  ADD CONSTRAINT `model_fk` FOREIGN KEY (`man_id`) REFERENCES `manufacturer` (`man_id`);

ALTER TABLE `sales`
  ADD CONSTRAINT `sales_fk` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);