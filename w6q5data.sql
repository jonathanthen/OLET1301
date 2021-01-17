CREATE VIEW AprilTemperaturesNSW AS
  SELECT obsdate, station, temperature AS "water_temp"
  FROM Stations NATURAL JOIN Measurements
  WHERE EXTRACT(month FROM obsdate) = '04'
  AND (upper(state) = 'NSW' OR upper(state) = 'NEW SOUTH WALES')
  AND temperature IS NOT NULL
  ORDER BY obsdate ASC, station ASC;