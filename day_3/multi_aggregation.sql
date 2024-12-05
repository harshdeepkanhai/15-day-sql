SELECT 
SUM(amount),
ROUND(AVG(amount),2) AS average
FROM payment;