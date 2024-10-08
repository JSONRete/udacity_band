-- Code from the Video
-- Query 1
SELECT SUM(standard_qty) AS standard, SUM(gloss_qty) AS gloss, SUM(poster_qty) AS poster
FROM orders

-- QUIZ:
-- 01 Find the total amount of poster_qty paper ordered in the orders table.
SELECT SUM(poster_qty) poster_total
FROM orders
-- given answer:
SELECT SUM(poster_qty) AS total_poster_sales
FROM orders;

-- 02 Find the total amount of standard_qty paper ordered in the orders table.
SELECT SUM(standard_qty) standard_total
FROM orders
-- given answer:
SELECT SUM(standard_qty) AS total_standard_sales
FROM orders;

-- 03 Find the total dollar amount of sales using the total_amt_usd in the orders table.
SELECT SUM(total_amt_usd) total_dollars
FROM orders
-- given answer:
SELECT SUM(total_amt_usd) AS total_dollar_sales
FROM orders;

-- 04 Find the total amount spent on standard_amt_usd and gloss_amt_usd paper for each order in the orders table. This should give a dollar amount for each order in the table.
SELECT SUM(standard_amt_usd) AS total_on_standard, SUM(gloss_amt_usd) AS total_on_gloss
FROM orders
--here is another option
SELECT standard_amt_usd + gloss_amt_usd total_standard_and_gloss_combined
FROM orders
-- given answer:
SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
FROM orders;

-- 05 Find the standard_amt_usd per unit of standard_qty paper. Your solution should use both aggregation and a mathematical operator.
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS per_unit_avg
FROM orders
-- given answer:
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS standard_price_per_unit
FROM orders;

