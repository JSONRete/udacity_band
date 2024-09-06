-- given example:

-- Consider this example:

SELECT id, (standard_amt_usd/total_amt_usd)*100 AS std_percent, total_amt_usd
FROM orders
LIMIT 10;


-- entered solution to the quiz for question one
SELECT id, account_id, standard_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 10;

-- my 2nd answer solution:

SELECT id, account_id, poster_amt_usd / (standard_amt_usd + gloss_amt_usd + poster_amt_usd) * 100 AS poster_paper_percentage
FROM orders
LIMIT 10;


-- given answers:

-- Solutions to Arithmetic Operator Questions
SELECT id, account_id, standard_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 10;

SELECT id, account_id, 
poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) AS post_per
FROM orders
LIMIT 10;
-- *Note: that you could multiply the value in Question 2 by 100

poster_amt_usd/(standard_amt_usd + gloss_amt_usd + poster_amt_usd) * 100 AS post_per