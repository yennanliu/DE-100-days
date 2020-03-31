-- https://www.guru99.com/database-normalization.html

-- sqlite 
CREATE TABLE movie_rating (
    full_names TEXT NOT NULL,
    physical_address TEXT NOT NULL,
    movie_rated TEXT NOT NULL,
    saluation TEXT NOT NULL,
    category TEXT NOT NULL
);

INSERT INTO movie_rating (full_names, physical_address, movie_rated, saluation, category) 
VALUES('JanetJones', 'First Street Plot No 4', 'Piratesofthecaribbean,ClashoftheTitans', 'Ms.', 'Action, Action');
INSERT INTO movie_rating (full_names, physical_address, movie_rated, saluation, category) 
VALUES('RobertPhill', '3rd street 34', 'ForgettingSarahMarshal,DaddyLittlegirls', 'Mr.', 'Romance, Romance');
INSERT INTO movie_rating (full_names, physical_address, movie_rated, saluation, category) 
VALUES('RobertPhill', '5th Avenue', 'ClashoftheTitans,DaddyLittlegirls', 'Mr.', 'Action');
