SELECT film_id, title, actor_id, given_name, family_name
FROM Films NATURAL JOIN Film_Actor NATURAL JOIN Actors
WHERE film_id IN (SELECT film_id
                 FROM Film_Actor FA NATURAL JOIN Actors A
                 WHERE A.given_name = 'PENELOPE' AND A.family_name = 'GUINESS')