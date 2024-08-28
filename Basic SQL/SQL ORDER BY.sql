SELECT * FROM tutorial.billboard_top_100_year_end
--------
SELECT *
  FROM tutorial.billboard_top_100_year_end
 ORDER BY artist
--- PROBLEM 1 -----------------
SELECT * 
  FROM tutorial.billboard_top_100_year_end
  WHERE year = 2012
  ORDER BY song_name DESC
------------------------------
SELECT *
  FROM tutorial.billboard_top_100_year_end
  WHERE year_rank <= 3
 ORDER BY year DESC, year_rank
-- SEE THE DIFF.
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank <= 3
 ORDER BY year_rank, year DESC  --1
 --
 SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year_rank <= 3
 ORDER BY 2, 1 DESC -- 2
 -- (1 = 2)
--- PROBLEM 2 ------------------
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year = 2010
 ORDER BY year_rank, artist
 --- PROBLEM 3 ------------------
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE group_name ILIKE '%t-pain%'  -- group_name = 'T-Pain' -> THIS IS WRONG
 ORDER BY year_rank DESC
 --- PROBLEM 4 ------------------
SELECT *
  FROM tutorial.billboard_top_100_year_end
 WHERE year IN (2013, 2003, 1993)  --Select the years
   AND year_rank BETWEEN 10 AND 20  --Limit the rank to 10-20
 ORDER BY year, year_rank