SELECT
rental_date,
COALESCE(CAST(return_date AS VARCHAR), 'Not returned')
FROM rental;