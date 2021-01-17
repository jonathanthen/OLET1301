SET search_path TO WaterInfo;

SELECT *
	FROM Stations
	WHERE cease IS null;