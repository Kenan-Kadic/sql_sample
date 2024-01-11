-- Exercise 12 — Tasks

/* SAMPLE ORDER
SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
FROM mytable
JOIN another_table
ON mytable.column = another_table.column
WHERE constraint_expression
GROUP BY column
HAVING constraint_expression
ORDER BY column ASC/DESC
LIMIT count OFFSET COUNT; */ 

-- 1. Find the number of movies each director has directed
SELECT director, COUNT(*) FROM movies
GROUP BY director;

-- 2. Find the total domestic and international sales that can be attributed to each director
SELECT movies.director, SUM(boxoffice.domestic_sales + boxoffice.international_sales) AS total_sales FROM movies
INNER JOIN boxoffice ON boxoffice.movie_id = movies.id
GROUP BY director;