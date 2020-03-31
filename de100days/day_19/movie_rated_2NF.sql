-- https://stackoverflow.com/questions/25969/insert-into-values-select-from
-- https://www.sqlitetutorial.net/sqlite-foreign-key/
-- create member table with primary key, then insert data from movie_rated_1NF
-- sqlite 

CREATE TABLE member (
member_id INTEGER PRIMARY KEY AUTOINCREMENT,
full_names TEXT, 
physical_address TEXT,
saluation TEXT
);

CREATE TABLE movie_rated_list (
member_id INTEGER,
movie_rated TEXT,
    FOREIGN KEY (member_id)
    REFERENCES member(member_id)
);

INSERT INTO member (full_names, physical_address, saluation)
SELECT DISTINCT
full_names AS full_names, 
physical_address AS physical_address,
saluation AS saluation
FROM  movie_rated_1NF;

-- INSERT into movie_rated_list (member_id, movie_rated)
-- SELECT DISTINCT 
-- member.member_id,
-- movie_rated_1NF.movie_rated 
-- FROM movie_rated_1NF
-- LEFT JOIN 
-- member
-- ON movie_rated_1NF.full_names = member.full_names;

-- SELECT 
-- member.member_id,
-- movie_rated.movie_rated
-- from member
-- join 
-- movie_rated
-- on member.member_id = movie_rated.member_id;
