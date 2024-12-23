SELECT se.seat_no, COUNT(*)
FROM seats AS se
LEFT OUTER JOIN boarding_passes AS bp
ON se.seat_no = bp.seat_no
GROUP BY se.seat_no
ORDER BY COUNT(*) DESC;

SELECT RIGHT(se.seat_no,1), COUNT(*)
FROM seats AS se
LEFT OUTER JOIN boarding_passes AS bp
ON se.seat_no = bp.seat_no
GROUP BY RIGHT(se.seat_no,1)
ORDER BY COUNT(*) DESC;