/* For last names that are shared by at least two actors, list those last names
and the number of actors who have that last name.*/

SELECT last_name, COUNT(last_name)
AS actor_count
FROM sakila.actor
WHERE last_name = last_name
GROUP BY last_name
ORDER BY actor_count DESC;