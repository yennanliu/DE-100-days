# Day 19 - DB (SQL) NORMALIZATION

### PROCESS (DB normalization) 
```
First Normal Form (1NF) -> Second Normal Form (2NF) -> Third Normal Form (3NF) -> Fourth Normal Form (4NF) -> Fifth Normal Form (5NF)
```
### BUILD THE TABLE 
- Let's say we have a `movie ranting` table defined as below
- [SQL](https://github.com/yennanliu/DE-100-days/blob/master/de100days/Day_19/movie_rented.sql)

```sql
-- sqlite 
CREATE TABLE movie_ranting (
    full_names TEXT NOT NULL,
    physical_address TEXT NOT NULL,
    movie_rented TEXT NOT NULL,
    saluation TEXT NOT NULL,
    category TEXT NOT NULL
);

INSERT INTO movie_ranting (full_names, physical_address, movie_rented, saluation, category) 
VALUES('JanetJones', 'First Street Plot No 4', 'Piratesofthecaribbean,ClashoftheTitans', 'Ms.', 'Action, Action');
INSERT INTO movie_ranting (full_names, physical_address, movie_rented, saluation, category) 
VALUES('RobertPhill', '3rd street 34', 'ForgettingSarahMarshal,DaddyLittlegirls', 'Mr.', 'Romance, Romance');
INSERT INTO movie_ranting (full_names, physical_address, movie_rented, saluation, category) 
VALUES('RobertPhill', '5th Avenue', 'ClashoftheTitans,DaddyLittlegirls', 'Mr.', 'Action');

```
```sql
-- sqlite 
-- check the table 
select * from movie_ranting;
-- JanetJones|First Street Plot No 4|Piratesofthecaribbean,ClashoftheTitans|Ms.|Action, Action
-- RobertPhill|3rd street 34|ForgettingSarahMarshal,DaddyLittlegirls|Mr.|Romance, Romance
-- RobertPhill|5th Avenue|ClashoftheTitans,DaddyLittlegirls|Mr.|Action

```
- In the below tutorial, we will step by step demo how to `normalize` this tbale via `1NF`, `2NF`, `3NF`...

### FIRST NORMAL FORM (1NF)
- Each table cell should contain a single value.
- Each record needs to be unique.
- So, we can modify the movie ranting table to `1NF pattern` via below commands:
- [SQL](https://github.com/yennanliu/DE-100-days/blob/master/de100days/Day_19/movie_rented_1NF.sql)

```sql
-- sqlite 
create table sub 
as select * from ( 
WITH RECURSIVE split(full_names_, movie_rented_, rest) AS (
  SELECT full_names, '', movie_rented || ',' FROM movie_ranting
   UNION ALL
  SELECT full_names_, 
         substr(rest, 0, instr(rest, ',')),
         substr(rest, instr(rest, ',')+1)
    FROM split
   WHERE rest <> '')
SELECT full_names_ as full_names, movie_rented_  as movie_rented
  FROM split 
 WHERE movie_rented_ <> ''
 ORDER BY full_names, movie_rented);

create table movie_rented_1NF
as select * from (
select 
sub.full_names, 
sub.movie_rented, 
movie_ranting.physical_address,
movie_ranting.saluation
from sub inner join movie_ranting
on sub.full_names  = movie_ranting.full_names
order by 1,2
);  

```

- Now you can see the table already normalized (`1NF normalization`)

```sql
-- sqlite 
select * from movie_rented_1NF;

-- JanetJones|ClashoftheTitans|First Street Plot No 4|Ms.
-- JanetJones|Piratesofthecaribbean|First Street Plot No 4|Ms.
-- RobertPhill|ClashoftheTitans|3rd street 34|Mr.
-- RobertPhill|ClashoftheTitans|5th Avenue|Mr.
-- RobertPhill|DaddyLittlegirls|3rd street 34|Mr.
-- RobertPhill|DaddyLittlegirls|5th Avenue|Mr.
-- RobertPhill|DaddyLittlegirls|3rd street 34|Mr.
-- RobertPhill|DaddyLittlegirls|5th Avenue|Mr.
-- RobertPhill|ForgettingSarahMarshal|3rd street 34|Mr.
-- RobertPhill|ForgettingSarahMarshal|5th Avenue|Mr.

```

### SECOND NORMAL FORM (2NF)
- Must Be in `1NF` already
- Single Column Primary Key
- The entity should be considered already in 1NF, and all attributes within the entity should depend solely on the unique identifier of the entity.

### THIRD NORMAL FORM (3NF)
- Must Be in `2NF` already
- Has no transitive functional dependencies

### BOYCE-CODD NORMAL FORM (BCNF) (3.5NF)

### FOURTH NORMAL FORM (4NF) 

### FIFTH NORMAL FORM (5NF)

### DATA CLEANING

### CONCEPTS 
- Primary Key
    - A primary is a single column value used to identify a database record uniquely.
    - A primary key cannot be NULL
    - A primary key value must be unique
    - The primary key values should rarely be changed
    - The primary key must be given a value when a new record is inserted.

- Composite key 
    - A composite key is a primary key composed of multiple columns used to identify a record uniquely

- Foreign Key
    - Foreign Key references the primary key of another Table! It helps connect your Tables
    - A foreign key can have a different name from its primary key
    - It ensures rows in one table have corresponding rows in another
    - Unlike the Primary key, they do not have to be unique. Most often they aren't
    - Foreign keys can be null even though primary keys can not 

- Transitive functional dependencies
    - A transitive functional dependency is when changing a non-key column, might cause any of the other non-key columns to change


### REF 
- DB normalization
 - https://www.guru99.com/database-normalization.html
 - https://www.w3schools.in/dbms/database-normalization/
 - https://www.studytonight.com/dbms/database-normalization.php
 - https://www.w3schools.in/dbms/database-normalization/
 - https://hackr.io/blog/dbms-normalization
