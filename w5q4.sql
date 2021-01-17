SELECT station, obsdate,
  CASE
    WHEN temperature LIKE '>%' THEN NULL
    WHEN temperature = '-' THEN NULL
    WHEN temperature = '--' THEN NULL
    WHEN temperature = '' THEN NULL
    WHEN temperature = 'n/a' THEN NULL
    WHEN temperature = ' ' THEN NULL
    ELSE ABS(CAST (temperature AS FLOAT))
    END AS "temperature"

  FROM Stations NATURAL JOIN Measurements
  WHERE obsdate BETWEEN '2009-04-01' AND '2009-04-30'
  ORDER BY station ASC, obsdate ASC;