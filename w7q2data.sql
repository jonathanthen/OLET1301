-- Solution 1
SELECT DISTINCT film_id, title
From Films NATURAL JOIN Film_Actor
WHERE release_year = '2000'
AND actor_id IS NOT NULL
ORDER BY title;

-- Solution 2 
SELECT film_id, title
FROM Films F
WHERE EXISTS (SELECT *
              FROM Film_Actor FA
              WHERE F.film_id = FA.film_id
              AND FA.actor_id IS NOT NULL)
AND release_year = '2000'
ORDER BY title;