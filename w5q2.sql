SELECT station, obsdate, level_water, discharge, temperature, ec25
  FROM Stations NATURAL JOIN Measurements
  WHERE LOWER(site) LIKE 'murray river %'
  AND LOWER(state) IN ('nsw', 'new south wales');