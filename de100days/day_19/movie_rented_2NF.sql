-- https://stackoverflow.com/questions/25969/insert-into-values-select-from
-- https://www.sqlitetutorial.net/sqlite-foreign-key/
-- create member table with primary key, then insert data from movie_rented_1NF
-- sqlite 

CREATE TABLE member (
member_id INTEGER PRIMARY KEY AUTOINCREMENT,
full_names TEXT, 
physical_address TEXT,
saluation TEXT
);

CREATE TABLE movie_rented_list (
member_id INTEGER,
movie_rented TEXT,
    FOREIGN KEY (member_id)
    REFERENCES member(member_id)
);

INSERT INTO member (full_names, physical_address, saluation )
SELECT DISTINCT
full_names AS full_names, 
physical_address AS physical_address,
saluation AS saluation
FROM  movie_rented_1NF;

-- INSERT into movie_rented_list (member_id, movie_rented)
-- SELECT DISTINCT 
-- member.member_id,
-- movie_rented_1NF.movie_rented 
-- FROM movie_rented_1NF
-- LEFT JOIN 
-- member
-- ON movie_rented_1NF.full_names = member.full_names;

-- SELECT 
-- member.member_id,
-- movie_rented.movie_rented
-- from member
-- join 
-- movie_rented
-- on member.member_id = movie_rented.member_id;
