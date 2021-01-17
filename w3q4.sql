SELECT obsdate   AS "observation date",
       ROUND(air_temp * 9 / 5 + 32, 1) AS "temperature", 
       'Fahrenheit' AS "unit"
  FROM Observations
 WHERE air_temp >= 30 and city = 'Sydney';