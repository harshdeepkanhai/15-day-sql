SELECT
customer_id,
SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id;