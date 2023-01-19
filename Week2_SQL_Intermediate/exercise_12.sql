-- EXERCISE 12
-- write a query that produces a table with the following results:
		-- product_id, name(i.e. name of product), quantity(you can get that from the order items table)
		-- return the product even if it has never been ordered

USE sql_store;

SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;
