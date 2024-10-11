/* Insert a record to represent Mary Smith renting the movie ACADEMY
DINOSAUR from Mike Hillyer at store number 1 today. Then write a query to
capture the exact row you entered into the rental table.*/

INSERT INTO sakila.rental (inventory_id, customer_id, staff_id)
VALUES (
(SELECT inventory_id FROM sakila.inventory
WHERE inventory_id =
	(SELECT film_id FROM sakila.film
    WHERE title = 'ACADEMY DINOSAUR')),
(SELECT customer_id FROM sakila.customer
WHERE first_name = 'MARY'
AND last_name = 'SMITH'),
(SELECT staff_id FROM sakila.staff
WHERE first_name = 'Mike'
AND last_name = 'Hillyer')
);

/* My query result will show rental_id 16051 instead of 16050 because I deleted
the first working query to try it a different way*/

SELECT * FROM sakila.rental
WHERE customer_id =
	(SELECT customer_id FROM sakila.customer
    WHERE first_name = 'MARY'
    AND last_name = 'SMITH')
AND inventory_id =
	(SELECT inventory_id FROM sakila.inventory
    WHERE inventory_id =
		(SELECT film_id FROM sakila.film
        WHERE title ='ACADEMY DINOSAUR'))
AND staff_id =
	(SELECT staff_id FROM sakila.staff
    WHERE first_name = 'Mike'
    AND last_name = 'Hillyer');