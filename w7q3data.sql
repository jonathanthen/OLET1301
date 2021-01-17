SELECT film_id, title, release_year
FROM Films F
WHERE NOT EXISTS (SELECT *
                  FROM Film_Actor FA
                  WHERE FA.film_id = F.film_id
                  AND actor_id IS NOT NULL)
ORDER BY film_id ASC;