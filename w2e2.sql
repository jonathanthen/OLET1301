SELECT *
  FROM Observations
 WHERE air_temp >= 30;

SELECT COUNT(*)
  FROM Observations
 WHERE air_temp >= 30;

SELECT MAX(wind_speed)
  FROM Observations
 WHERE wind_direction = 'SW';