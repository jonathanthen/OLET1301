SELECT film_id, title
  FROM Films
 WHERE rental_rate <= (SELECT MIN(rental_rate)
                      FROM Films
                      WHERE release_year = 2006)
 AND release_year = 2006
 ORDER BY title;