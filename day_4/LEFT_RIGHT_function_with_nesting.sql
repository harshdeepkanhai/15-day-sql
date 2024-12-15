SELECT
LEFT(first_name, 2),
RIGHT(first_name, 2),
RIGHT(LEFT(first_name, 2),1),
first_name
FROM customer;