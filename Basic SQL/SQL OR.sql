-- PROBLEM 1
SELECT *
  FROM tutorial.billboard_top_100_year_end
WHERE year_rank <= 10
  AND (group_name ILIKE '%katy perry%' OR group_name ILIKE '%bon jovi%')

-- PROBLEM 2
SELECT *
  FROM tutorial.billboard_top_100_year_end
WHERE (year BETWEEN 1970 AND 1979 OR year BETWEEN 1990 AND 1999)
  AND song_name ILIKE '%California%';
  
-- PROBLEM 3
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE group_name ILIKE '%dr. dre%'
   AND (year <= 2000 OR year >= 2010)
  