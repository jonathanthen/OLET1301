SET search_path TO WaterInfo;

SELECT *
	FROM Measurements
	WHERE sensor = 'disc' AND obsdate < '2011-01-01';