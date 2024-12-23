SELECT seat_no, ROUND(AVG(amount),2) 
FROM boarding_passes AS bp
LEFT JOIN ticket_flights AS tf
ON bp.ticket_no = tf.ticket_no
AND bp.flight_id = tf.flight_id
GROUP BY seat_no
ORDER BY 2 DESC;