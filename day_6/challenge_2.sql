SELECT ti.passenger_name , fare_conditions, COUNT(*)
FROM tickets AS ti
INNER JOIN ticket_flights AS tf
ON ti.ticket_no = tf.ticket_no
AND ti.passenger_name = 'ALEKSANDR IVANOV'
GROUP BY ti.passenger_name, fare_conditions
ORDER BY COUNT(*) DESC;