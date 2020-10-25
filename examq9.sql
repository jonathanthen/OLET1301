SELECT place_of_arrival, COUNT(DISTINCT V.voyage_id) AS "num_voyages", COUNT(convict_id) AS "num_convicts"
FROM Passengers P NATURAL JOIN Voyages V NATURAL JOIN Convicts C
GROUP BY place_of_arrival
ORDER BY "num_convicts" DESC, "num_voyages" ASC 
LIMIT 3;