/* Display the first and last name of each actor in a single column in
upper case letters. Name the column in the results Actor Name*/

SELECT CONCAT(actor.first_name,' ',actor.last_name)
AS 'Actor Name'
FROM sakila.actor;

# + Create an additional query to sort Actor Name by the actor's last name

SELECT CONCAT(actor.first_name,' ',actor.last_name)
AS 'Actor Name'
FROM sakila.actor
ORDER BY actor.last_name;