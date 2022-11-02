
-- Normal join
SELECT *
FROM movie join director
ON movie.director = director.directorID;

-- Normal join
SELECT *
FROM actor join catering
ON cateredby = cateringID;

-- Normal join
SELECT *
FROM catering join crew
ON crewID = crew;

-- Adding a movie
INSERT INTO movie (Director, title, genre, releasedate, moneyearned, actor)
VALUES (2, "Avengers: Age of Ultron", "Sci-Fi", 2015, 10000000, 1);

-- Joining movie and actor tables, and getting info where there is "Age" in the title
SELECT movie.title, movie.genre, movie.ReleaseDate, actor.name AS "Actors"
FROM movie join actor
ON actor = actorID
WHERE title LIKE "%Age%";

-- Getting all date from movie
SELECT * FROM movie;

-- Joining movie and actor tables and getting some info
SELECT movie.title, movie.genre, movie.ReleaseDate, actor.name
FROM movie join actor
ON actor = actorID;

-- Updating a movie in movie table
UPDATE movie
SET director = 1, title = "Avengers: Age of Ultron", genre = "Sci-Fi",releasedate = 2015,moneyearned = 10000000,actor = 1
WHERE movieID = 7;

-- Addig new company to catering table
INSERT INTO catering (companyname, address, Crew)
VALUES ("AllYouCanEat Ltd.", "11911 Mexico, Arriba road 777", 1),
       ("AllYouCanEat Ltd.", "11911 Mexico, Arriba road 777", 2),
       ("AllYouCanEat Ltd.", "11911 Mexico, Arriba road 777", 3);
       
-- get all the date from catering table       
SELECT * from catering;

-- join catering and crew table, and get the members for AllYouCanEat Ltd.
SELECT CompanyName, catering.Address, crew.name
FROM catering join crew
ON crewID = crew
WHERE companyname LIKE "All%";

-- Deleting a movie
DELETE from movie
WHERE movieID = 1;

-- Getting the movies where the actor is Robert Downey Jr.
SELECT movie.title, movie.genre, movie.ReleaseDate, actor.name
FROM movie join actor
ON actor = actorID
WHERE actor.name LIKE "Robert%";