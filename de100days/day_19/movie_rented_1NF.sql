-- http://www.samuelbosch.com/2018/02/split-into-rows-sqlite.html
-- https://gist.github.com/dannguyen/9a2b1505bbe097b765a9e7c2e1f7a23c

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
AS select * from (
select 
sub.full_names AS full_names, 
sub.movie_rented AS movie_rented, 
movie_ranting.physical_address AS physical_address,
movie_ranting.saluation AS saluation
from sub inner join movie_ranting
on sub.full_names  = movie_ranting.full_names
order by 1,2
);  
