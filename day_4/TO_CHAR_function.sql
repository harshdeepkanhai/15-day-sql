SELECT
SUM(amount),
TO_CHAR(payment_date, 'Dy, Month YYYY')
FROM payment
GROUP BY TO_CHAR(payment_date, 'Dy, Month YYYY');