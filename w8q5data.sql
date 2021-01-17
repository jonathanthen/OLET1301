SELECT name AS "category", COUNT(film_id) AS "num_films",
       string_agg(title, '; ' ORDER BY title ASC) AS "film_list"
FROM Films NATURAL JOIN Film_Category NATURAL JOIN CATEGORY
GROUP BY name
ORDER BY "num_films" DESC, name ASC;