SELECT first_name, last_name, email, co.country
FROM customer AS cu
LEFT JOIN address AS ad
ON cu.address_id = ad.address_id
LEFT JOIN city AS ci
ON ci.city_id = ad.city_id
LEFT JOIN country AS co
ON co.country_id = ci.country_id
WHERE country = 'Brazil';
