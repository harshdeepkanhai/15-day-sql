SELECT ti.passenger_name , SUM(bo.total_amount) AS total_amount
FROM tickets AS ti
INNER JOIN bookings AS bo
ON ti.book_ref = bo.book_ref
GROUP BY ti.passenger_name
ORDER BY total_amount DESC;