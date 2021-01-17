SELECT EXTRACT(year FROM date_of_departure) AS "year_of_departure", COUNT(*) AS "number"
FROM Voyages
GROUP BY year_of_departure
ORDER BY year_of_departure;