SELECT first_name, last_name, phone, district
FROM customer AS cu
LEFT JOIN address AS ad
ON cu.address_id = ad.address_id
WHERE district = 'Texas';


SELECT *
FROM customer AS cu
RIGHT JOIN address AS ad
ON cu.address_id = ad.address_id
WHERE cu.customer_id IS NULL;
