SELECT
*, (SELECT ROUND(AVG(amount),2)FROM payment)
FROM payment;