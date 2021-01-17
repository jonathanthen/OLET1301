SELECT category, COUNT(convict_id) AS "num_convicts",
        string_agg(DISTINCT crime, '; ' ORDER BY crime ASC) AS "crime_list"
FROM Crimes NATURAL JOIN Convictions
GROUP BY category
ORDER BY "num_convicts" DESC, category ASC;