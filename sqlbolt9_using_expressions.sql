-- Exercise 9 — Tasks

-- 1. List all movies and their combined sales in millions of dollars
SELECT movies.title, (boxoffice.domestic_sales + boxoffice.international_sales) / 1000000 AS combined_sales_in_millions_of_dollars
FROM movies
INNER JOIN boxoffice ON boxoffice.movie_id = movies.id;
               
-- 2. List all movies and their ratings in percent
SELECT movies.title, (boxoffice.rating) * 10 AS ratings_in_percent
FROM movies
INNER JOIN boxoffice ON boxoffice.movie_id = movies.id;
               
-- 3. List all movies that were released on even number years
SELECT title
FROM movies
WHERE year % 2 = 0;