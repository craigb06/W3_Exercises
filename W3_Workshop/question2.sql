/* You need to find the ID number, first name, last name of an actor,
where the only thing you know about him is his first name, Joe.*/

SELECT actor_id, first_name, last_name
FROM sakila.actor 
WHERE first_name = 'Joe';

# + Creaete an additional query to find all the movies that Joe has been in.

SELECT title FROM sakila.film
WHERE film_id IN
	(SELECT film_id FROM 
    sakila.film_actor
    WHERE actor_id IN
		(SELECT actor_id
        FROM sakila.actor
        WHERE first_name = 'JOE'));
        
# An additional way to write this query would be to use join

SELECT title FROM sakila.film
JOIN sakila.film_actor
USING (film_id)
WHERE film_actor.actor_id
	= (SELECT actor_id
    FROM sakila.actor
    WHERE first_name = 'JOE');
