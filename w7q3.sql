SELECT EXTRACT(year FROM date_of_departure) AS "year",
        voyage_id, vessel, place_of_arrival,
        COUNT(convict_id) AS "num_convicts"
FROM Voyages NATURAL JOIN Passengers
GROUP BY "year", voyage_id
HAVING COUNT(*) >= 100
ORDER BY "year" ASC, voyage_id;