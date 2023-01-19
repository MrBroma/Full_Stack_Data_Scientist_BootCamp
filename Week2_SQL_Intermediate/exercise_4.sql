-- EXERCISE 4

-- return PRODUCTS WITH
-- quantuty egal to 49, 38 and 72

USE sql_store;

SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);