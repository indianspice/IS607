DROP SCHEMA IF EXISTS movie;
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Reviewer;

-- Create and set default schema
CREATE SCHEMA movie_rating;
USE movie_rating;

-- Create table of movies
CREATE TABLE Movies
(
	Movie_ID int(1) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    Genre VARCHAR(200) NOT NULL,
    Director VARCHAR(100) NOT NULL
);

-- Populate movie table
INSERT INTO Movies
		(Title, Genre, Director)
	VALUES("Sausage Party", "Comedy", "Conrad Vernon");
INSERT INTO Movies
		(Title, Genre, Director)
	VALUES("Don't Breathe", "Suspense Thriller", "Fede Alvarez");
INSERT INTO Movies
		(Title, Genre, Director)
	VALUES("Suicide Squad", "Action", "David Ayer");
INSERT INTO Movies
		(Title, Genre, Director)
	VALUES("Bad Moms", "Comedy", "Scott Moore");
INSERT INTO Movies
		(Title, Genre, Director)
	VALUES("Jason Bourne", "Adventure", "Paul Greengrass");
INSERT INTO Movies
		(Title, Genre, Director)
	VALUES("War Dogs", "Comedy", "Todd Phillips");
    
SELECT * FROM Movies;

-- Create table of reviewers
CREATE TABLE Reviewer
(
	Rev_ID int(1) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    RL_Name VARCHAR(50),
    RF_Name VARCHAR(50),
    Rating INT(1),
    Movie_ID INT(1) NOT NULL REFERENCES Movies(Movie_ID)
);
  
-- Insert values into Reviewer
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Goddin", "Larry", 5, 1);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Goddin", "Larry", 5, 2);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Goddin", "Larry", 1, 3);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Goddin", "Larry", 3, 4);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Goddin", "Larry", 2, 5);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Goddin", "Larry", 4, 6);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Morris", "David", 4, 1);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Morris", "David", 1, 2);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Morris", "David", 5, 3);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Morris", "David", 4, 4);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Morris", "David", 4, 5);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Morris", "David", 2, 6);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Rodstar", "Denis", 1, 1);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Rodstar", "Denis", 4, 2);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Rodstar", "Denis", 5, 3);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Rodstar", "Denis", 2, 4);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Rodstar", "Denis", 3, 5);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Rodstar", "Denis", 1, 6);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Lewis", "Jason", 2, 1);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Lewis", "Jason", 2, 2);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Lewis", "Jason", 4, 3);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Lewis", "Jason", 4, 4);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Lewis", "Jason", 3, 5);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Lewis", "Jason", 2, 6);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Gunti", "Carol", 4, 1);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Gunti", "Carol", 2, 2);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Gunti", "Carol", 1, 3);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Gunti", "Carol", 5, 4);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Gunti", "Carol", 3, 5);
INSERT INTO Reviewer (RL_Name, RF_Name, Rating, Movie_ID)
	VALUES ("Gunti", "Carol", 4, 6);

SELECT * FROM Reviewer;

SELECT Title, Genre, Director, RL_Name, RF_Name, Rating
FROM Movies m
LEFT JOIN Reviewer r
ON m.Movie_ID=r.Movie_ID
ORDER by Title;