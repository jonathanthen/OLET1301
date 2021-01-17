SET search_path TO WaterInfo;

SELECT *
	FROM Measurements
	WHERE obsvalue != 0;