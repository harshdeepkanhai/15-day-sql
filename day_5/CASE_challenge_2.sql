SELECT 
title,
CASE
	WHEN rating IN ('PG-13','PG') AND length > 210  THEN 'Great raing or very long (tier 1)'
	WHEN description LIKE '%Drama%' AND length > 90  THEN 'Long drama (tier 2)'
	WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END AS tier
FROM film
WHERE CASE
	WHEN rating IN ('PG-13','PG') AND length > 210  THEN 'Great raing or very long (tier 1)'
	WHEN description LIKE '%Drama%' AND length > 90  THEN 'Long drama (tier 2)'
	WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
	WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END IS NOT NULL;