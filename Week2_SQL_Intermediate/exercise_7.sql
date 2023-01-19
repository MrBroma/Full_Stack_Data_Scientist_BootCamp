-- EXERCISE 7

-- Get the customer whose 
	-- first names are ELKA or AMBUR
    -- last names end with EY or ON
    -- last names starts with MY or contains SE
    -- last names contain B followed by R or U
    
-- first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

-- last names end with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

-- last names starts with MY or contains SE
SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

-- last names contain B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'B[R,U]';

-- other solution proposed
SELECT *
FROM customers
WHERE last_name REGEXP 'br|bu';


