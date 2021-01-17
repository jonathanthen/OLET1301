SELECT *
  FROM Observations
 WHERE obsdate = '2017-01-03';

SELECT COUNT(*)
  FROM Observations
 WHERE obsdate >= '2017-01-05' AND obsdate <= '2017-01-10';

SELECT COUNT(*)
  FROM Observations
 WHERE obsdate < CURRENT_DATE;

SELECT CURRENT_DATE;