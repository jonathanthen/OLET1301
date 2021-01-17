SELECT release_year, COUNT(*) AS "number_of_films"
FROM Films
GROUP BY release_year
ORDER BY "number_of_films" DESC, release_year ASC;