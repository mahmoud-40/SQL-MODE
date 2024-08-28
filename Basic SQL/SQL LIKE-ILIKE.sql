-- PROBLEM 1
SELECT *
  FROM tutorial.billboard_top_100_year_end
WHERE group_name ILIKE 'ludacris%'

-- PROBLEM 2
SELECT *
  FROM tutorial.billboard_top_100_year_end
WHERE artist LIKE 'DJ%'