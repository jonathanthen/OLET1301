SELECT obsdate, station, temperature
FROM Stations NATURAL JOIN Measurements
WHERE temperature > (SELECT AVG(temperature)
                      FROM Measurements)
ORDER BY obsdate ASC, station ASC;