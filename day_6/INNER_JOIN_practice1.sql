SELECT payment_id,
cu.customer_id, 
amount,
cu.first_name, 
cu.last_name
FROM payment AS pa
INNER JOIN customer AS cu
ON pa.customer_id = cu.customer_id;