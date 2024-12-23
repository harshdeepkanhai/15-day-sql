SELECT COUNT(*) 
FROM boarding_passes AS bp
FULL OUTER JOIN tickets AS ti
ON bp.ticket_no = ti.ticket_no
WHERE ti.ticket_no IS NULL;

SELECT COUNT(*) 
FROM boarding_passes AS bp
FULL OUTER JOIN tickets AS ti
ON bp.ticket_no = ti.ticket_no
WHERE bp.ticket_no IS NULL;