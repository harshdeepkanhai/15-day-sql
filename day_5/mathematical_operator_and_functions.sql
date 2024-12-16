SELECT 9/4;


SELECT ROUND(9.0/4,2);

-- ABS, ROUND, CEILING, FLOOR

SELECT
film_id,
rental_rate AS old_rental_rate,
CEILING(rental_rate * 1.1)-0.01  AS new_rental_rate
FROM film;