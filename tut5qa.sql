SET search_path TO carhire;

SELECT DISTINCT COUNT(driver_id)
FROM TripLog
WHERE (distance / (EXTRACT(epoch FROM (end_time - start_time))/3600)) > 110;