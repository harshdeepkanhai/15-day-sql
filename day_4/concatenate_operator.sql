SELECT
LEFT(first_name, 1) || '.' || LEFT(last_name, 1) || '.' AS initials,
first_name,
last_name
FROM customer;