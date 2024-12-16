SELECT
CAST(REPLACE(passenger_id, ' ',  '') AS BIGINT)
FROM tickets;