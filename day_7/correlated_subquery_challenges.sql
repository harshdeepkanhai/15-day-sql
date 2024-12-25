SELECT payment_id,
customer_id,
staff_id,
amount,
(SELECT SUM(amount)  AS sum_amount FROM payment p2
WHERE p1.customer_id = p2.customer_id),
(SELECT COUNT(*)  AS count_payments FROM payment p2
WHERE p1.customer_id = p2.customer_id)
FROM payment p1
ORDER BY customer_id, amount DESC;

SELECT title, replacement_cost, rating,
(SELECT AVG(replacement_cost) FROM film f3
WHERE f1.rating = f3.rating) AS avg_replacement_cost
FROM film f1
WHERE replacement_cost = 
(SELECT MAX(replacement_cost) 
FROM film f2 
WHERE f1.rating = f2.rating);

SELECT first_name, amount, payment_id
FROM payment p1
INNER JOIN customer cu
ON p1.customer_id = cu.customer_id
WHERE amount = (SELECT MAX(amount)FROM payment p2
WHERE p1.customer_id = p2.customer_id);
