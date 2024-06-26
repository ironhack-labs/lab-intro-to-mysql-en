USE `lab_cars`;

///cars///
INSERT INTO `cars` (`vin`, `model_id`, `year`, `color`) VALUES('3K096I98581DHSNUP', 1, 2019, 'Blue');

INSERT INTO `cars` (`vin`, `model_id`, `year`, `color`) VALUES('ZM8G7BEUQZ97IH46V', 2, 2019, 'Red');

INSERT INTO `cars` (`vin`, `model_id`, `year`, `color`) VALUES('RKXVNNIHLVVZOUB4M', 3, 2018, 'White');

INSERT INTO `cars` (`vin`, `model_id`, `year`, `color`) VALUES('HKNDGS7CU31E9Z7JW', 4, 2018, 'Silver');

INSERT INTO `cars` (`vin`, `model_id`, `year`, `color`) VALUES('DAM41UDN3CHU2WVF6', 5, 2019, 'Gray');

INSERT INTO `cars` (`vin`, `model_id`, `year`, `color`) VALUES('DAM41UDN3CHU2WVF6', 6, 2019, 'Gray');




/// countries///
INSERT INTO `countries` (`name`) VALUES('Spain');

INSERT INTO `countries` (`name`) VALUES('United States');

INSERT INTO `countries` (`name`) VALUES('France');





/// customers///



INSERT INTO `customers` (`customer_id`, `name`, `phone`, `email`, `address`, `city`, `province`, `country`, `postal`) VALUES(10001, 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 1, '28045');

INSERT INTO `customers` (`customer_id`, `name`, `phone`, `email`, `address`, `city`, `province`, `country`, `postal`) VALUES(20001, 'Abraham Lincoln', '+1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 2, '33130');

INSERT INTO `customers` (`customer_id`, `name`, `phone`, `email`, `address`, `city`, `province`, `country`, `postal`) VALUES(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 3, '75008');





/// invoices///




INSERT INTO `invoices` (`invoice_number`, `invoice_date`, `car_id`, `customer_id`, `seller_id`) VALUES('852399038', '2018-08-22', 1, 2, 4);

INSERT INTO `invoices` (`invoice_number`, `invoice_date`, `car_id`, `customer_id`, `seller_id`) VALUES('731166526', '2018-12-31', 4, 1, 6);

INSERT INTO `invoices` (`invoice_number`, `invoice_date`, `car_id`, `customer_id`, `seller_id`) VALUES('271135104', '2019-01-22', 3, 3, 8);





/// manufacturers///




INSERT INTO `manufacturer` (`name`) VALUES('Volkswagen');

INSERT INTO `manufacturer` (`name`) VALUES('Peugeot');

INSERT INTO `manufacturer` (`name`) VALUES('Ford');

INSERT INTO `manufacturer` (`name`) VALUES('Toyota');

INSERT INTO `manufacturer` (`name`) VALUES('Volvo');




/// models///





INSERT INTO `model` (`man_id`, `name`, `variant`) VALUES(1, 'Tiguan', NULL);

INSERT INTO `model` (`man_id`, `name`, `variant`) VALUES(2, 'Rifter', NULL);

INSERT INTO `model` (`man_id`, `name`, `variant`) VALUES(3, 'Fusion', NULL);

INSERT INTO `model` (`man_id`, `name`, `variant`) VALUES(4, 'RAV4', NULL);

INSERT INTO `model` (`man_id`, `name`, `variant`) VALUES(5, 'V60', NULL);

INSERT INTO `model` (`man_id`, `name`, `variant`) VALUES(5, 'V60', 'Cross Country');

///sales///



INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00001', 'Petey Cruiser', 1);

INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00002', 'Anna Sthesia', 2);

INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00003', 'Paul Molive', 3);

INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00004', 'Gail Forcewind', 4);

INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00005', 'Paige Turner', 5);

INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00006', 'Bob Frapples', 6);

INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00007', 'Walter Melon', 7);

INSERT INTO `sales` (`staff_id`, `name`, `store_id`) VALUES('00008', 'Shonda Leer', 8);

/// stores///



INSERT INTO `stores` (`store_name`) VALUES('Madrid');

INSERT INTO `stores` (`store_name`) VALUES('Barcelona');

INSERT INTO `stores` (`store_name`) VALUES('Berlin');

INSERT INTO `stores` (`store_name`) VALUES('Paris');

INSERT INTO `stores` (`store_name`) VALUES('Mimia');

INSERT INTO `stores` (`store_name`) VALUES('Mexico City');

INSERT INTO `stores` (`store_name`) VALUES('Amsterdam');

INSERT INTO `stores` (`store_name`) VALUES('São Paulo');