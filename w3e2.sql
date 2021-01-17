SELECT *
  FROM Observations
 LIMIT 20;

SELECT *
  FROM Observations
 ORDER BY random()
 LIMIT 20;

SELECT *
  FROM Observations
 ORDER BY wind_speed DESC
 LIMIT 20;

SELECT *
  FROM Observations
 WHERE city = 'Perth'
 ORDER BY air_temp DESC
 LIMIT 10;