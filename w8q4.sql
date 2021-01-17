--Solution 1
SELECT station_name, corr(min_wind_speed, energy_amount) AS "wind_power_correlation"
FROM WeatherData JOIN WeatherStations USING (station_id)
                 JOIN PowerGeneration USING (obsdate)
                 JOIN EnergyTypes USING (energy_id)
WHERE EXTRACT(year FROM obsdate) = '2017'
      AND energy_name = 'Wind'
GROUP BY station_name
ORDER BY "wind_power_correlation" DESC;

--Solution 2
SELECT station_name, corr(min_wind_speed, energy_amount) AS "wind_power_correlation"
FROM WeatherData NATURAL JOIN WeatherStations NATURAL JOIN PowerGeneration NATURAL JOIN EnergyTypes
WHERE EXTRACT(year FROM obsdate) = '2017'
      AND energy_name = 'Wind'
GROUP BY station_name
ORDER BY "wind_power_correlation" DESC;
