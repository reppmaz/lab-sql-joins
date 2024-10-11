USE sakila;

# 1. List the number of films per category.
SELECT name, COUNT(film_id)
FROM film_category
INNER JOIN category
USING (category_id)
GROUP BY name;

# 2. Retrieve the store ID, city, and country for each store.
SELECT store_id AS store, city AS city, country AS country
FROM store
INNER JOIN address
USING (address_id)
INNER JOIN city
USING (city_id)
INNER JOIN country
USING (country_id)
GROUP BY store_id;

# 3. Calculate the total revenue generated by each store in dollars.
SELECT store_id, SUM(amount)
FROM store
INNER JOIN STAFF
USING (store_id)
INNER JOIN payment
USING (staff_id)
GROUP BY (store_id);

# 4. Determine the average running time of films for each category.
SELECT name, AVG(length)
FROM film
INNER JOIN film_category
USING (film_id)
INNER JOIN category
USING (category_id)
GROUP BY name

# BONUS
# Identify the film categories with the longest average running time.
# Display the top 10 most frequently rented movies in descending order.
# Determine if "Academy Dinosaur" can be rented from Store 1.
# Provide a list of all distinct film titles, along with their availability status in the inventory.
# Include a column indicating whether each title is 'Available' or 'NOT available.'
# Note that there are 42 titles that are not in the inventory,
# and this information can be obtained using a CASE statement combined with IFNULL."db_by_hour