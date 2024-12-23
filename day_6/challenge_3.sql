SELECT fi.title, COUNT(*)
FROM customer AS cu
INNER JOIN rental AS re
ON cu.customer_id = re.customer_id
INNER JOIN inventory AS inv
ON inv.inventory_id = re.inventory_id
INNER JOIN film AS fi
ON fi.film_id = inv.film_id
WHERE cu.first_name = 'GEORGE' AND cu.last_name = 'LINTON'
GROUP BY fi.title
ORDER BY COUNT(*) DESC;