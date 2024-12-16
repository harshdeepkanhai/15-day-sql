SELECT
COALESCE(CAST(actual_arrival- scheduled_arrival AS VARCHAR),'not arrived')
FROM flights;