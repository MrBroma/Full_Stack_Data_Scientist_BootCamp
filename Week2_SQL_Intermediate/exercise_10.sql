-- EXERCISE 10
-- write a query to join the order_items table with the products table and return 
		-- product ID
        -- product name
        -- quantity (purchased)
        -- unit price
-- NB: use alias to simplify your code

SELECT oi.product_id, p.name, quantity, p.unit_price, quantity*p.unit_price AS price
FROM order_items oi

JOIN products p
	ON oi.product_id = p.product_id;

