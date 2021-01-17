SELECT film_id, title, COUNT(actor_id) AS "count"
FROM Films NATURAL JOIN Film_Actor
GROUP BY film_id HAVING COUNT(actor_id) >= 5
ORDER BY "count" DESC, title ASC;