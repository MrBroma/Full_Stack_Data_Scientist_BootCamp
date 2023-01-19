-- EXERCISES 8

	-- get all the orders that are not shipped


SELECT *
FROM orders
WHERE shipped_date IS NULL

