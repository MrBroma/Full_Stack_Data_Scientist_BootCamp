-- Working with existing table

USE sql_store;

-- inserting multiple data into existing table

INSERT INTO shippers
VALUES
		(DEFAULT, 'shipper1'),
        (DEFAULT, 'shipper2'),
		(DEFAULT, 'shipper3'),
        (DEFAULT, 'shipper4');

SELECT *
FROM shippers;

-- creating a copy of a table

CREATE TABLE new_orders AS
SELECT *
FROM orders;

SELECT *
FROM new_orders;


INSERT INTO new_orders
SELECT *
FROM orders
WHERE order_date < '2019-01-01';

-- updating existing table

UPDATE payments
SET date='2018-08-01', amount=40.02, payment_method=1
WHERE payment_id=2;

UPDATE invoices
SET payment_total = 10, payment_date=due_date
WHERE invoice_id=5;

SELECT *
FROM invoices;

-- UPDATE multiple records

UPDATE invoices
SET payment_total = 40
WHERE client_id = 5;

-- 
UPDATE invoices
SET payment_total = 100
WHERE client_id IN (5,3);


-- -------------------------------SQL VIEW--------------------
USE sql_hr;

CREATE VIEW new_employee
AS
SELECT *
FROM employees
WHERE job_title NOT LIKE '%VP%' AND reports_to IS NOT NULL;

SELECT *
FROM new_employee;

-- -------------------------------USING VIEWS------------------

SELECT 
		first_name,
        last_name,
        salary,
        (salary+(0.05*salary)) AS salary_increase
FROM new_employee;

-- -------------------------------ALTER VIEWS------------------

ALTER VIEW new_employee
AS
SELECT *
FROM employees
WHERE job_title NOT LIKE '%VP%';

ALTER VIEW new_employee
AS
SELECT *
FROM employees
WHERE job_title NOT LIKE '%VP%' AND reports_to IS NOT NULL AND salary > 70000;

-- ------------------DROP VIEW-------------------

DROP VIEW new_employee


