-- EXERCISE 11
-- write a query and join the payments table with the payment_methods table as well as the clients
   -- produce a report that shows the payment with more details such as the name of the client, and the payment method.
   -- nb: the tables are found in the sql_invoicing database
   
   
   -- SOLUTION

USE sql_invoicing;

SELECT p.invoice_id, c.name, p.amount, pm.name AS 'payment_method'
FROM payments p
JOIN clients c
    ON p.client_id = c.client_id 
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id;

