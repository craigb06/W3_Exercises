/* List each film and the number of actors who are listed for that film. Use
tables film_actor and film. Use inner join.*/

SELECT title, COUNT(actor_id) AS number_of_actors 
FROM sakila.film
INNER JOIN sakila.film_actor
ON film.film_id = film_actor.film_id
GROUP BY title, 'number_of_actors'
ORDER BY number_of_actors DESC;