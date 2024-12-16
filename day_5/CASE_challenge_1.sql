SELECT 
COUNT(*) AS ticket_count,
CASE
	WHEN total_amount < 20000 THEN 'low price ticket'
	WHEN total_amount BETWEEN 20000 AND 150000 THEN 'mid price ticket'
	ELSE 'high price ticket'
END AS ticket_price_buckets
FROM bookings
GROUP BY ticket_price_buckets;


SELECT 
COUNT(*) AS flights,
CASE
	WHEN EXTRACT(MONTH from scheduled_departure) IN (12, 1, 2) THEN 'Winter'
	WHEN EXTRACT(MONTH from scheduled_departure) IN (3, 4, 5) THEN 'Spring'
	WHEN EXTRACT(MONTH from scheduled_departure) IN (6, 7, 8) THEN 'Summer'
	WHEN EXTRACT(MONTH from scheduled_departure) IN (9, 10, 11) THEN 'Fall'
END AS season
FROM flights
GROUP BY season;


