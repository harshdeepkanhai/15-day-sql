SELECT *
FROM aircrafts_data AS ad
LEFT OUTER JOIN flights AS fl
ON ad.aircraft_code = fl.aircraft_code;

SELECT *
FROM aircrafts_data AS ad
LEFT OUTER JOIN flights AS fl
ON ad.aircraft_code = fl.aircraft_code
WHERE fl.flight_id IS NULL;