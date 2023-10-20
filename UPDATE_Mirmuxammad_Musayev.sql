UPDATE film
SET rental_duration = 3,
rental_rate = 9.99
WHERE title = 'The Shawshank Redemption';

UPDATE customer
SET first_name = 'Bard',
last_name = 'Google AI',
address = '1600 Amphitheatre Parkway, Mountain View, CA 94043',
create_date = CURRENT_DATE
WHERE customer_id = (
SELECT customer_id
FROM customer
WHERE rental_count >= 10 AND payment_count >= 10
LIMIT 1
);
