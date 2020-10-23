SELECT COUNT(convict_id) AS "num_life_sentences"
FROM Convictions NATURAL JOIN Convicts
WHERE sentence = 'life'
AND convict_id IN (SELECT convict_id
                    FROM Passengers NATURAL JOIN Voyages
                    WHERE EXTRACT(year FROM date_of_departure) = 1827)