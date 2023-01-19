-- CREATE a DATABASE and a table

CREATE DATABASE databasename;

CREATE TABLE tablename(
				ID INT,
                Age INT,
                Name VARCHAR(10)
                );

SELECT ID, Age, Name
FROM tablename;

-- --------SELECT STATEMENT------

USE sql_store;

SELECT *
FROM customers;

SELECT first_name, last_name, points
FROM customers;

SELECT points, first_name, last_name
FROM customers;

-- not store anywhere

-- ORDER BY CLAUSE

SELECT first_name, last_name, points
FROM customers
ORDER BY points DESC;

SELECT first_name, last_name, points
FROM customers
ORDER BY points ASC;

-- WHERE CLAUSE

SELECT first_name, last_name, birth_date, points
FROM customers
WHERE birth_date < '1990-01-01'
ORDER BY birth_date ASC;

-- NB: SFWO:

-- SELECT Detail --

SELECT first_name,
	   last_name, 
       points, 
       points*10
FROM customers;

-- BODMAS

SELECT first_name,
	   last_name, 
       points, 
       points*10-5
FROM customers;

-- ALIAS
SELECT first_name,
	   last_name, 
       points, 
       points*10-5, 
       points*10-5 AS operation 
FROM customers;

SELECT *
FROM order_items;

SELECT *
FROM customers;

SELECT product_id,
	   quantity, 
       unit_price, 
       quantity*unit_price AS price, 
       round((quantity*unit_price)*0.95, 2) AS discount
FROM order_items;

-- DISTINCT keyword to get the unique item

SELECT *
FROM customers;

-- UPDATE `sql_store`.`customers` SET `state` = 'VA' WHERE (`customer_id` = '1');

SELECT DISTINCT state
FROM customers;

-- -------------     WHERE Clause in details ----------

SELECT *
FROM customers
WHERE points > 2000;

-- Comparison operator < <= > >= or different != <>

SELECT *
FROM customers
WHERE points = 457;

SELECT *
FROM customers
WHERE state = 'VA';

-- 
SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

-- -------       AND, OR and NOT operators ----------


SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND city = 'Chicago';

-- OR
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR city = 'Chicago';

-- Combined AND and OR

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND city = 'Chicago' AND points > 1000;

-- NOT

SELECT *
FROM customers
WHERE NOT (birth_date > '1990-01-01' OR city = 'Chicago' AND points < 1000);

-- TWO examples identical

SELECT *
FROM customers
WHERE NOT(birth_date <= '1990-01-01' AND points <= 500);
-- = TO this
SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' OR points >= 500;

-- IN operator

SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

-- BETWEEN operator

SELECT *
FROM customers
WHERE points >= 1000 AND points <= 3000;

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- LIKE
-- last name start with b

SELECT *
FROM customers
WHERE last_name LIKE 'b%';

SELECT *
FROM customers
WHERE last_name LIKE 'brush%';

-- end with y
SELECT *
FROM customers
WHERE last_name LIKE '%y';

SELECT *
FROM customers
WHERE phone LIKE '7%';
-- b in the last name
SELECT *
FROM customers
WHERE last_name LIKE '%b%';

-- ben
SELECT *
FROM customers
WHERE last_name LIKE 'b__'; -- or start with characters and finish with b '__b'

-- Betchley
SELECT *
FROM customers
WHERE last_name LIKE 'b______y';

-- REGEXP operator : Regular expression

SELECT *
FROM customers; 










