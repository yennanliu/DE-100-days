-- http://www.samuelbosch.com/2018/02/split-into-rows-sqlite.html
-- https://gist.github.com/dannguyen/9a2b1505bbe097b765a9e7c2e1f7a23c

create table movie_rented_1NF 
as select * from ( 
WITH RECURSIVE split(full_names_, movie_rented_, rest) AS (
  SELECT full_names, '', movie_rented || ',' FROM movie_ranting
   UNION ALL
  SELECT full_names_, 
         substr(rest, 0, instr(rest, ',')),
         substr(rest, instr(rest, ',')+1)
    FROM split
   WHERE rest <> '')
SELECT full_names_, movie_rented_ 
  FROM split 
 WHERE movie_rented_ <> ''
 ORDER BY full_names_, movie_rented_ ); 
