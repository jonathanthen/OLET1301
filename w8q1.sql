SELECT category, crime, COUNT(crime_id) AS number_of_crimes
FROM Crimes
GROUP BY GROUPING SETS (
                       (category, crime),
                       (category)
                       )
ORDER BY category, crime;