-- EXERCISE 1

-- Write an SQL query to return
-- 		1. all the products in the database 
-- 		2. name
-- 		3. unit price
-- 		4. discounted price of 5%

-- Exercise:
USE sql_store;

SELECT name, 
	   unit_price, 
       round((unit_price)*0.95,2) AS discount_price
FROM products;

-- SAMPLE SOLUTION:

