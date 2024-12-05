SELECT 
MIN(replacement_cost) AS minimum_replacement_cost,
MAX(replacement_cost) AS maximum_replacement_cost,
ROUND(AVG(replacement_cost),2) AS average_replacement_cost,
SUM(replacement_cost) AS total_replacement_cost
FROM film;