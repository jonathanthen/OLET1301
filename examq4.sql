 SELECT ROUND( AVG(area) ), SUM(area) / COUNT(*) AS "average"
   FROM Properties JOIN Areas USING (area_id)
  WHERE primary_purpose = 'OFFICE'