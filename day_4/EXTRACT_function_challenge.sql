SELECT 
EXTRACT(MONTH from payment_date) AS month,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY month
ORDER BY total_payment_amount DESC;


SELECT 
EXTRACT(DOW from payment_date) AS day_of_week,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY day_of_week
ORDER BY total_payment_amount DESC;


SELECT 
EXTRACT(WEEK from payment_date) AS week,
customer_id,
SUM(amount) AS total_payment_amount
FROM payment
GROUP BY week, customer_id
ORDER BY total_payment_amount DESC;