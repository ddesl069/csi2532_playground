/* question 1 */
SELECT name, birthplace
FROM artists;

/* question 2 */
SELECT title, price
FROM artworks
WHERE price >1600;

/* question 3 */
SELECT title, type
FROM artworks
WHERE year = 2000 OR artist_name= 'Picasso';

/* question 4 */
SELECT name, birthplace
FROM artists
WHERE dateofbirth BETWEEN '1880-01-01' AND '1930-12-31';

/* question 4 */
SELECT name, birthplace
FROM artists
WHERE dateofbirth BETWEEN '1880-01-01' AND '1930-12-31';

/* question 5 */
SELECT name, country
FROM artists
WHERE style IN ('Modern', 'Baroque', 'Renaissance');

/* question 6 */
SELECT *
FROM artworks
GROUP BY title;

/* question 7 */
SELECT name, id 
FROM customers
INNER JOIN likeartists ON customers.id = likeartists.customer_id
WHERE artist_name = 'Picasso';

/* question 8 */
SELECT name 
FROM customers
INNER JOIN likeartists ON customers.id = likeartists.customer_id
WHERE artist_name 
IN(SELECT artist_name FROM likeartists
    INNER JOIN artists ON likeartists.artist_name = artists.name
    WHERE style = 'Renaissance')
AND amount > 30000;