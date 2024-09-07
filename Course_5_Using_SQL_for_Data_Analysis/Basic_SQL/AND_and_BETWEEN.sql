-- video examples:

-- Code from the Video
-- Query 1

SELECT *
FROM orders
WHERE occurred_at >= '2016-04-01' AND occurred_at <= '2016-10-01'
ORDER BY occurred_at
-- Query 2

-- This query has been modified to properly include BETWEEN

SELECT *
FROM orders
WHERE occurred_at BETWEEN '2016-04-01' AND '2016-10-01'
ORDER BY occurred_at

-- quiz questions:

-- Questions using AND and BETWEEN operators
-- Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0

-- Using the accounts table, find all the companies whose names do not start with 'C' and end with 's'.

-- When you use the BETWEEN operator in SQL, do the results include the values of your endpoints, or not? Figure out the answer to this important question by writing a query that displays the order date and gloss_qty data for all orders where gloss_qty is between 24 and 29. Then look at your output to see if the BETWEEN operator included the begin and end values or not.

-- Use the web_events table to find all information regarding individuals who were contacted via the organic or adwords channels, and started their account at any point in 2016, sorted from newest to oldest.