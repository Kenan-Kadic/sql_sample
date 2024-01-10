-- Exercise 3 Tasks

-- 1. Find all the Toy Story movies
SELECT * FROM movies
WHERE title LIKE 'Toy%';

-- 2. Find all the movies directed by John Lasseter
SELECT * FROM movies
WHERE director = 'John Lasseter';

-- 3. Find all the movies (and director) not directed by John Lasseter
SELECT title, director FROM movies
WHERE director != 'John Lasseter';

-- 4. Find all the WALL-* movies
SELECT * FROM movies
WHERE title LIKE 'WALL-%'

