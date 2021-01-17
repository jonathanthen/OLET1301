SELECT COUNT(*), AVG(air_temp)
  FROM Observations
  WHERE obsdate >= '2017-04-01' 
  AND obsdate <= '2017-04-30'
  AND wind_speed >= 10
  AND city = 'Brisbane';