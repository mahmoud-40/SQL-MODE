-- PROBLEM 1
SELECT *
  FROM tutorial.us_housing_units
WHERE west > 50
 
 -- PROBLEM 2
SELECT *
  FROM tutorial.us_housing_units 
 WHERE south <= 20
 
 -- PROBLEM 3
SELECT *
  FROM tutorial.us_housing_units 
 WHERE month_name  = 'February'
 
 -- PROBLEM 4
SELECT *
  FROM tutorial.us_housing_units
 WHERE month_name <= 'N'

 -- PROBLEM 5
SELECT year,
       month,
       west,
       south,
       midwest,
       northeast, 
      west + south + midwest + northeast AS all_four_regions
  FROM tutorial.us_housing_units
  
 -- PROBLEM 6
SELECT year,
       month,
       west,
       south,
       midwest,
       northeast
  FROM tutorial.us_housing_units
  WHERE west > (midwest + northeast)
  
 -- PROBLEM 7
SELECT year,
       month,
       west/(west + south + midwest + northeast)*100 AS west_pct,
       south/(west + south + midwest + northeast)*100 AS south_pct,
       midwest/(west + south + midwest + northeast)*100 AS midwest_pct,
       northeast/(west + south + midwest + northeast)*100 AS northeast_pct
  FROM tutorial.us_housing_units
 WHERE year >= 2000