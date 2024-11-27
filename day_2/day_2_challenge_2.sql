SELECT *
FROM customer
WHERE (first_name LIKE '%ER%' AND first_name LIKE '_A%')
ORDER BY last_name DESC;