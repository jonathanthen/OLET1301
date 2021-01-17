SELECT AVG(air_temp)
FROM Observations
WHERE obsdate >= '2017-01-1' AND obsdate <= '2017-01-31' AND city = 'Sydney';

/*OR*/

SELECT AVG(air_temp)
FROM Observations
WHERE obsdate BETWEEN '2017-01-1' AND '2017-01-31' AND city = 'Sydney';