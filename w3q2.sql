SELECT *
FROM Observations
WHERE city = 'Sydney'
AND wind_direction = 'SE'
ORDER BY wind_speed DESC
LIMIT 3;