SET search_path TO WaterInfo;

SELECT *
	FROM Measurements
	WHERE sensor = 'temp' AND obsvalue > 28;