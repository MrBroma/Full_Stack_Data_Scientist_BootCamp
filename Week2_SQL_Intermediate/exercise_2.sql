-- EXERCISE 2

-- Write an SQL query to return the orders that were made before 2019

SELECT *
FROM orders
WHERE order_date < '2019-01-01';