SELECT pa.*, first_name, last_name, email
FROM payment AS pa
INNER JOIN staff AS st
ON pa.staff_id = st.staff_id
WHERE st.staff_id = 1;