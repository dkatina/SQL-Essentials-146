-- DML (Data Manipulation Lanquage)
-- Add, Modify, and Delete the entries in our database

SELECT * FROM Customer;

-- Insert Into

INSERT INTO Customer (customer_name, email, phone)
VALUES ('Dylan Katina', 'dk@email.com', '123-456-7890');

-- Adding multiple values

INSERT INTO Customer (customer_name, email, phone)
VALUES ('Travis Peck', 'tp@email.com' ,' 098-765-4321'),
('Darth Vader', 'dv@deathstar.com', '666-666-6666'),
('Luke Skywalker', 'chosenone@jedi.com', '777-123-4567');

-- Adding NULL values

INSERT INTO Customer (customer_name, email, phone)
VALUES ('Assassin', NULL, '000-000-0000');

-- Updating Entities

UPDATE Customer 
SET customer_name = 'Anakin Skywalker', email = 'as@jedi.com'
WHERE id = 3; -- lets us specify exactly which entity we want to update

-- DELETING Entities

DELETE FROM Customer
WHERE id = 4;

-- when deleting or updating in MySQL there are training wheels
-- SQL_SAFE_UPDATES 1, and 0
-- 1 is the default that only lets you identify using an id
-- 0 offers more freedom

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Customer
WHERE email IS NULL;
SET SQL_SAFE_UPDATES = 1;

-- Adding additional data for querying

INSERT INTO Customer (customer_name, email, phone)
VALUES ('Peter Cottontail', 'pc@email.com', '1234567891'),
('Jungle George', 'banana@email.com', '1234567892'),
('Billy Butcher', 'supesoup@email.com', '1234567893'),
('Obi-wan Kenoibi', 'ok@jedi.com', '1234567894'),
('Django Freeman', 'whereshildi@email.com', '1234567895'),
('John Dutton', 'ranch4life@email.com', '1234567896'),
('Jeff Probst', 'jp@survivor.com', '1234567897');


INSERT INTO Orders (order_date, customer_id)
VALUES ('2023-01-18', 1),
('2023-02-24', 1),
('2023-02-28', 6),
('2023-03-04', 8),
('2023-03-12', 2),
('2023-04-16', 7),
('2023-05-19', 9),
('2023-06-02', 10),
('2023-08-26', 12),
('2023-09-04', 3),
('2023-12-23', 11),
('2024-01-18', 1)