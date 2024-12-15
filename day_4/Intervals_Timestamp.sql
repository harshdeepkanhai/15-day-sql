SELECT 
CURRENT_TIMESTAMP,
EXTRACT(DAY from return_date - rental_date) * 24 
+ EXTRACT(HOUR from return_date - rental_date) || ' hours'
FROM rental;