SET search_path TO WaterInfo;

SELECT COUNT(*)
	FROM Measurements
	WHERE obsvalue != 0;

/*70379*/