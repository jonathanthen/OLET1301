SELECT obsdate AS "date",
       wind_speed AS "wind speed",
       'km/h' AS "unit",
       CASE
         WHEN wind_speed >= 20 THEN 'windy'
         WHEN wind_speed < 20 THEN 'mild'
         ELSE 'not windy'
         END AS "windy?"
  FROM Observations
  WHERE city = 'Sydney';