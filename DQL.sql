-- DQL (Data Query Language) Lets us extract data in a refined way

-- SELECT, FROM

SELECT * FROM Customer;

SELECT customer_name, email FROM Customer;

-- WHERE lets us filter based on a condition

SELECT * FROM Customer
WHERE id = 7;

SELECT * FROM Customer
WHERE customer_name = 'Travis Peck';

-- AND OR NOT

SELECT * FROM Customer
WHERE id = 8 OR id = 12;

SELECT * FROM Customer
WHERE customer_name = 'Dylan Katina' OR email = 'dk@gmail.com';

SELECT * FROM Customer
WHERE NOT id = 1;

-- ORDER BY

SELECT * FROM Customer
ORDER BY customer_name DESC;

-- LIKE 

SELECT * FROM Customer
WHERE customer_name LIKE 'J%'; -- names starting with J

SELECT * FROM Customer
WHERE email LIKE '%@jedi.com';

-- BETWEEN
SELECT * FROM Orders;

SELECT * FROM Orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-04-30';