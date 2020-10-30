SELECT category, COUNT(convict_id) AS "num_convictions"
FROM Convictions NATURAL JOIN Crimes
GROUP BY category
HAVING COUNT(*) >= 100
ORDER BY "num_convictions" DESC