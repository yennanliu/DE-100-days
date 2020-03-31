-- http://www.samuelbosch.com/2018/02/split-into-rows-sqlite.html
-- https://gist.github.com/dannguyen/9a2b1505bbe097b765a9e7c2e1f7a23c

-- sqlite 
create table sub 
as select * from ( 
WITH RECURSIVE split(full_names_, movie_rated_, rest) AS (
  SELECT full_names, '', movie_rated || ',' FROM movie_rating
   UNION ALL
  SELECT full_names_, 
         substr(rest, 0, instr(rest, ',')),
         substr(rest, instr(rest, ',')+1)
    FROM split
   WHERE rest <> '')
SELECT full_names_ as full_names, movie_rated_  as movie_rated
  FROM split 
 WHERE movie_rated_ <> ''
 ORDER BY full_names, movie_rated);

create table movie_rated_1NF
AS select * from (
select 
sub.full_names AS full_names, 
sub.movie_rated AS movie_rated, 
movie_rating.physical_address AS physical_address,
movie_rating.saluation AS saluation
from sub inner join movie_rating
on sub.full_names  = movie_rating.full_names
order by 1,2
);  
