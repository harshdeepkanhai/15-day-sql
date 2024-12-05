SELECT
staff_id,
customer_id,
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY COUNT(*) DESC;