SELECT 
UPPER(email) AS email_upper,
LOWER(email) AS email_lower,
email,
LENGTH(email) 
FROM customer
WHERE LENGTH(email) < 30;