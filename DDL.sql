
-- leaving comment using --

-- DDL (Data Definition Language) Used to build and Modify our DB

CREATE DATABASE ecomm_db;

USE ecomm_db; -- tell my interpreter that we want to use this particular database

-- highlight the specific statement/query that you want to run

CREATE TABLE Customer (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(75) NOT NULL,
email VARCHAR(150) NULL
);

CREATE TABLE Orders (
id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE NOT NULL,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

-- Altering our Database

ALTER TABLE Customer 
ADD phone VARCHAR(16); -- Adding phone column to my Customer table

ALTER TABLE Customer
MODIFY email VARCHAR(300);

-- Dropping a Tables

CREATE TABLE Droppable ( 
id INT AUTO_INCREMENT PRIMARY KEY -- Adding dummy to be dropped
);

DROP TABLE Droppable; -- Dropping table