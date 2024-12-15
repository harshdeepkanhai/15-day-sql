SELECT 
LOWER(first_name) as first_name_lower, 
LOWER(last_name) as last_name_lower,
LOWER(email) as email_lower
FROM customer
WHERE LENGTH(first_name) > 10
OR LENGTH(last_name) > 10;