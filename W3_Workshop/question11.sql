/* The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
As an unintended consequence, films starting with the letters K and Q have also soared
in popularity. Use subqueries to display the titles of movies starting with the letters
K and Q who language is English.*/

SELECT title FROM sakila.film
WHERE title LIKE 'K%' OR 'Q%' IN
	(SELECT language_id FROM sakila.language
    WHERE name ='English');
    
SELECT title FROM sakila.film
WHERE language_id =
	(SELECT language_id FROM sakila.language
    WHERE name ='English')
AND title LIKE 'K%' OR 'Q%';
