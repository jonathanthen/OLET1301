SELECT sentence, COUNT(*) AS "number of convicts"
FROM Convictions
GROUP BY sentence
ORDER BY "number of convicts" DESC
LIMIT 10;