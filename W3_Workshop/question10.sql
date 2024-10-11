# How many copies of the film HUNCHBACK IMPOSSIBLE exist in the system?

SELECT title, COUNT(film_id) 
AS number_in_inventory
FROM sakila.film
JOIN sakila.inventory
USING (film_id)
GROUP BY title, film_id
HAVING title = 'HUNCHBACK IMPOSSIBLE';