SELECT obsdate, stationid, obsvalue AS "temperature"
FROM Measurements
WHERE sensor = 'temp'
      AND obsvalue > (SELECT AVG(obsvalue)
                      FROM Measurements
                      WHERE sensor = 'temp')
ORDER BY obsdate ASC, stationid ASC;