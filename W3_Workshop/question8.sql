/* Use JOIN to display the total amount rung up by each staff member in
August of 2005, using tables staff and payment.*/

SELECT first_name, last_name, 
SUM(amount) AS 'Total Rung Up'
FROM sakila.staff
JOIN sakila.payment
USING (staff_id)
WHERE payment_date LIKE '%2005-08%'
GROUP BY first_name, last_name, 'Taoal Rung Up';