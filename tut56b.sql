SELECT driver_id, count, DENSE_RANK() OVER (ORDER BY count DESC) AS rankCount,
sumdist, DENSE_RANK() OVER (ORDER BY sumdist DESC) AS rankDist
FROM (SELECT driver_id, COUNT(*) AS count, SUM(distance) AS sumdist
FROM Driver JOIN TripLog USING (driver_id)
GROUP BY driver_id
) AS DriverStats
ORDER BY rankCount
LIMIT 10;
