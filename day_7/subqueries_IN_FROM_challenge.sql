SELECT ROUND(AVG(amount_per_day),2) AS avg_daily_revenue
FROM
(SELECT 
SUM(amount) AS amount_per_day,
DATE(payment_date)
FROM payment
GROUP BY DATE(payment_date)) AS daily_revenue