SET search_path TO WaterInfo;

SELECT AVG(obsvalue::float)
	FROM Measurements NATURAL JOIN Stations
	WHERE sitename = 'Murray River at Barham'
		AND sensor = 'level'
		AND obsdate BETWEEN '2008-01-01' AND '2010-12-31';