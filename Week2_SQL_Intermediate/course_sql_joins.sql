-- --------------------JOINS-----------------------


USE sql_store;

SELECT *
FROM orders

JOIN customers
	ON orders.customer_id = customers.customer_id;
    
-- 

SELECT order_id, first_name, last_name, o.customer_id
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;

-- --------------JOINING Across databases----------------------

SELECT name, oi.unit_price, p.product_id
FROM order_items oi
JOIN sql_inventory.products p
	ON oi.product_id = p.product_id;

-- -------------Joining Table by itself

USE sql_hr;

SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;


-- Joining across mutliple table

-- Join orders with customers and status table

USE sql_store;

SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON os.order_status_id = o.status;

SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON os.order_status_id = o.status;

-- OUTER JOIN

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id;

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id;

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id;


