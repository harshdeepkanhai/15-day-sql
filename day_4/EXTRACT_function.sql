SELECT 
EXTRACT(MONTH from rental_date),
COUNT(*)
FROM rental
GROUP BY EXTRACT(MONTH from rental_date)
ORDER BY COUNT(*) DESC;