SELECT *
  FROM Measurements
  WHERE (level_water IS NULL 
    AND discharge IS NULL 
    AND temperature IS NULL 
    AND ec25 IS NULL);