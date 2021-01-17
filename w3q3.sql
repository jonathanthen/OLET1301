SELECT AVG(air_temp) AS "average temperature",
       AVG(wind_speed) AS "average wind speed"
  FROM Observations
  WHERE city = 'Adelaide';