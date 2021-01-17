SELECT given_name, family_name, address, model, descr AS "description", start_time,
        (distance / (EXTRACT(epoch FROM (end_time - start_time))/3600)) AS "speed"
FROM
    (Driver d INNER JOIN TripLog t ON d.driver_id = t.driver_id)
    INNER JOIN Vehicle v ON t.car_id = v.car_id