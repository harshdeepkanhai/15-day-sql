SELECT
LEFT(email,POSITION(last_name IN email)-2),
email
FROM  customer;

SELECT
LEFT(email,POSITION('@' IN email)-1),
email
FROM  customer;