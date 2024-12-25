SELECT *,
(SELECT MAX(amount) FROM payment p2
WHERE p1.customer_id = p2.customer_id)
FROM payment p1
ORDER BY customer_id;