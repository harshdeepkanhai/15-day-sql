SELECT
SUM(amount) AS total_payment,
TO_CHAR(payment_date, 'Dy, DD/MM/YYYY') AS day
FROM payment
GROUP BY day
ORDER BY total_payment DESC;

SELECT
SUM(amount) AS total_payment,
TO_CHAR(payment_date, 'Mon, YYYY') AS day
FROM payment
GROUP BY day
ORDER BY total_payment DESC;

SELECT
SUM(amount) AS total_payment,
TO_CHAR(payment_date, 'Dy, HH:MI') AS day_time
FROM payment
GROUP BY day_time
ORDER BY total_payment ASC;