-- EXERCISE 6

-- Get the customers whose
	-- 1. adresses contain TRAIL or AVENUE
    -- 2. phone numbers end with 9

-- Ex 
-- 1.
SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';

-- 2.
SELECT *
FROM customers
WHERE phone LIKE '%9';

-- SAMPLE SOLUTION