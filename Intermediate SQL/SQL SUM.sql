SELECT *
  FROM tutorial.aapl_historical_stock_price
--- PROBLEM 1 -----------------------------
SELECT AVG(open)
  FROM tutorial.aapl_historical_stock_price
-- ANOTHER SOLUTION USING COUNT/SUM ---------
SELECT SUM(open)/COUNT(open) AS avg_open_price
  FROM tutorial.aapl_historical_stock_price
-------------------------------------------