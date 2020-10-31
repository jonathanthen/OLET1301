SELECT station_name,
       COUNT(sunshine_duration) AS "count",
       MIN(sunshine_duration) AS "min_sunshine",
       percentile_cont(0.25) WITHIN GROUP (ORDER BY sunshine_duration) AS "Q1",
       percentile_cont(0.50) WITHIN GROUP (ORDER BY sunshine_duration) AS "median",
       percentile_cont(0.75) WITHIN GROUP (ORDER BY sunshine_duration) AS "Q3",
       MAX(sunshine_duration) AS "max_sunshine"
  FROM WeatherData NATURAL JOIN WeatherStations
  WHERE sunshine_duration IS NOT NULL
  GROUP BY station_name
  ORDER BY "median" DESC