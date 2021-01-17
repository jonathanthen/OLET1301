SELECT station, obsdate, sensor, obsvalue, site, stnowner
 FROM Stations NATURAL JOIN Measurements NATURAL JOIN Sensors
 WHERE obsdate BETWEEN '2007-02-01' AND '2007-02-28'
 AND site = 'Murray River at Swan Hill'
 ORDER BY obsdate ASC, sensor ASC;