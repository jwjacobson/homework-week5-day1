--Question 1: actors WITH last_name Wahlberg
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';
--Answer: 2

--Question 2: payments BETWEEN 3.99 AND 5.99
SELECT *
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Answer: 5607

--Question 3: films WITH 7 copies
SELECT film_id, count(*)
FROM inventory
GROUP BY film_id
HAVING count(*) = 7
--Answer: 116

SELECT *
FROM inventory

--Question 4: customers with first name Willie
SELECT *
FROM customer
WHERE first_name = 'Willie';
--Answer: 2

--Question 5: store employee WITH most rentals
SELECT *
FROM staff

SELECT count(*)
FROM rental
WHERE staff_id = 1;

SELECT count(*)
FROM rental
WHERE staff_id = 2;
--Answer: Mike Hillyer (staff_id 1), WITH 8040 rentals

--Question 6: number OF UNIQUE district names
SELECT DISTINCT district
FROM address;
--Answer: 378

--Question 7: film WITH most actors
SELECT film_id, count(*)
FROM film_actor
GROUP BY film_id
ORDER BY count(*) DESC;

SELECT *
FROM film
--Answer: Lambs Cincinatti (film_id 508)

--Question 8: customers WITH LAST name ending es AT store_id 1
SELECT *
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
--Answer: 13

--Question 9: number of payment amounts WITH rentals OVER 250 FOR customer ids 380-430
SELECT amount, customer_id, rental_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
ORDER BY rental_id;
--Answer: I couldn't find a field corresponding to number of rentals. rental_id seems most likely but the values seem too high based on the question

--Question 10: number OF rating categories IN film TABLE + rating WITH most movies
SELECT DISTINCT rating
FROM film;
--Answer part 1: 5
SELECT rating, count(*)
FROM film
GROUP BY rating
ORDER BY count (*) DESC;
--Answer part 2: PG-13