SELECT
*
FROM payment
WHERE amount > (SELECT AVG(amount) FROM payment);

SELECT
*
FROM payment
WHERE customer_id = (SELECT customer_id FROM customer WHERE first_name = 'ADAM');

SELECT
*
FROM payment
WHERE customer_id IN (SELECT customer_id FROM customer WHERE first_name LIKE 'A%');