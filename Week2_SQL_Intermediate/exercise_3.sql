-- EXERCISE 3

-- From the order_items table, get the items:
-- for order number 6
-- where the total price is greater than $20
-- and display the unit price


-- ex
SELECT order_id, quantity, unit_price, unit_price*quantity AS total_price
FROM order_items
WHERE order_id = 6 AND (unit_price*quantity) > 20;


-- SAMPLE SOLUTION