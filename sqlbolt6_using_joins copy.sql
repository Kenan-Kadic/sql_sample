-- Exercise 6 — Tasks

-- 1. Find the domestic and international sales for each movie
SELECT movies.title, 
       boxoffice.domestic_sales, 
       boxoffice.international_sales 
FROM boxoffice
INNER JOIN movies on movies.id = boxoffice.movie_id;

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT movies.title, 
       boxoffice.domestic_sales, 
       boxoffice.international_sales 
FROM boxoffice
INNER JOIN movies on movies.id = boxoffice.movie_id
WHERE boxoffice.international_sales > boxoffice.domestic_sales;

-- 3. List all the movies by their ratings in descending order
SELECT movies.title,
       boxoffice.rating    
FROM boxoffice
INNER JOIN movies on movies.id = boxoffice.movie_id
ORDER BY rating DESC;

