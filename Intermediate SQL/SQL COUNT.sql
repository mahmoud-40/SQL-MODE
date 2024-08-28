SELECT * FROM tutorial.aapl_historical_stock_price
---- PROBLEM 1 -----------------------------------
SELECT COUNT(low) AS low
  FROM tutorial.aapl_historical_stock_price
---- PROBLEM 2 -----------------------------------
SELECT 
    COUNT(*) AS total_rows,
    COUNT(year) AS year_count,
    COUNT(month) AS month_count,
    COUNT(open) AS open_count,
    COUNT(high) AS high_count,
    COUNT(low) AS low_count,
    COUNT(close) AS close_count,
    COUNT(volume) AS volume_count,
    (COUNT(*) - COUNT(year)) AS year_null_count,
    (COUNT(*) - COUNT(month)) AS month_null_count,
    (COUNT(*) - COUNT(open)) AS open_null_count,
    (COUNT(*) - COUNT(high)) AS high_null_count,
    (COUNT(*) - COUNT(low)) AS low_null_count,
    (COUNT(*) - COUNT(close)) AS close_null_count,
    (COUNT(*) - COUNT(volume)) AS volume_null_count
FROM tutorial.aapl_historical_stock_price;
--------------------------------------------------------