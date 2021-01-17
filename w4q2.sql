SELECT count(*)
  FROM Measurements M, Sensors S
  WHERE M.sensor = S.sensor
  AND metric = 'celsius';