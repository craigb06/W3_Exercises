/* The actor HARPO WILLIAMS was accidentally entered in the actor table as
GROUCHO WILLIAMS. Write one query to fix the record, plus another to
verify the change.*/

UPDATE sakila.actor
SET first_name = 'HARPO'
WHERE first_name = 'GROUCHO'
AND last_name = 'WILLIAMS';

SELECT * FROM sakila.actor
WHERE first_name = 'HARPO';
