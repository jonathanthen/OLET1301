SELECT MAX(air_temp), MIN(air_temp)
  FROM Observations
 WHERE city = 'Sydney' OR city = 'Brisbane';

SELECT DISTINCT COUNT(city)
  FROM Observations;

SELECT COUNT(DISTINCT city)
  FROM Observations;