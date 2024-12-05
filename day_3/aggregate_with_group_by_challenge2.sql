SELECT
staff_id,
SUM(amount),
COUNT(*)
FROM payment
WHERE amount <> 0
GROUP BY staff_id
ORDER BY SUM(amount) DESC
LIMIT 2;