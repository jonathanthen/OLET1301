SET search_path TO WaterInfo;

SELECT *
	FROM Measurements, Stations
	WHERE sensor = 'level' AND sitename = 'Murray River at Barham'
	AND obsdate < '2011-01-01' AND obsdate > '2008-01-01';