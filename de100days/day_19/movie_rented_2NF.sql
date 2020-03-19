-- https://stackoverflow.com/questions/25969/insert-into-values-select-from
-- create member table with primary key, then insert data from movie_rented_1NF
-- sqlite 

CREATE TABLE member (
member_id INTEGER PRIMARY KEY AUTOINCREMENT,
full_names TEXT, 
physical_address TEXT,
saluation TEXT
);

INSERT INTO member (full_names, physical_address, saluation )
select 
DISTINCT
full_names AS full_names, 
physical_address AS physical_address,
saluation AS saluation
FROM  movie_rented_1NF;