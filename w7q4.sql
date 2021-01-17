SELECT C.crime AS "crime"
FROM Crimes C
WHERE NOT EXISTS (SELECT *
                  FROM Convictions CT
                  WHERE CT.crime_id = C.crime_id)
ORDER BY "crime" ASC;