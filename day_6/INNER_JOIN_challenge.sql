SELECT se.fare_conditions, COUNT(*) 
FROM boarding_passes AS bp
INNER JOIN seats AS se
ON bp.seat_no = se.seat_no
GROUP BY se.fare_conditions;