----------- MIN / MAX --------------------------------------------
SELECT *
  FROM tutorial.aapl_historical_stock_price
---- PROBLEM 1 ---------------------------------
SELECT MIN(low)
  FROM tutorial.aapl_historical_stock_price
---- PROBLEM 2 ----------------------------------
SELECT MAX(close - open)
  FROM tutorial.aapl_historical_stock_price
------------------------------------------------------------------
