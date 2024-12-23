SELECT ti.ticket_no, ti.passenger_name, fl.scheduled_departure
FROM tickets AS ti
INNER JOIN ticket_flights AS tf
ON ti.ticket_no = tf.ticket_no
INNER JOIN flights AS fl
ON fl.flight_id = tf.flight_id;