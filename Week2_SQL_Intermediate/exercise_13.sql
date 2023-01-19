-- EXERCISE 13
	-- using the sql_invoicing database, write a query that returns:
        -- date
        -- amount
        -- client
        -- name (i.e name of payment method)

USE sql_invoicing;

SELECT
		p.date,
        p.amount,
        c.name AS client,
        pm.name AS payment_mode
FROM payments p
JOIN clients c USING (client_id)
JOIN payment_methods pm
	ON p.payment_id = pm.payment_method_id;


