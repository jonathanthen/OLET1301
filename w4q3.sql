SELECT COUNT(*)
 FROM Stations S, Measurements M, Sensors SE
 WHERE M.sensor = SE.sensor
 AND S.station = M.station
 AND S.site = 'Murray River at Barham'
 AND M.obsvalue > 76.5;