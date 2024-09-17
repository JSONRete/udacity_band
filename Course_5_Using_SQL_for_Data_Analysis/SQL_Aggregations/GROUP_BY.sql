-- Code from the Video
-- Query 1: Results in an error
SELECT  account_id,
        SUM(standard_qty) AS standard,
        SUM(gloss_qty) AS gloss,
        SUM(poster_qty) AS poster
    FROM orders
-- Query 2:
SELECT  account_id,
        SUM(standard_qty) AS standard,
        SUM(gloss_qty) AS gloss,
        SUM(poster_qty) AS poster
    FROM orders
GROUP BY account_id
ORDER BY account_id

-- QUIZ:
-- 01 Which account (by name) placed the earliest order? Your solution should have the account name and the date of the order.

-- my answer:
SELECT a.name, o.occurred_at
FROM accounts a
JOIN orders o
ON a.id = o.account_id
ORDER BY occurred_at
LIMIT 1

-- given answer:
SELECT a.name, o.occurred_at
FROM accounts a
JOIN orders o
ON a.id = o.account_id
ORDER BY occurred_at
LIMIT 1;

-- 02Find the total sales in usd for each account. You should include two columns - the total sales for each company's orders in usd and the company name.

-- my answer:
SELECT a.name, SUM(o.total) total_usd
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name

-- given answer:
SELECT a.name, SUM(total_amt_usd) total_sales
FROM orders o
JOIN accounts a
ON a.id = o.account_id
GROUP BY a.name;

-- 03 Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? Your query should return only three values - the date, channel, and account name.

-- my answer:
SELECT a.name, w.occurred_at, w.channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
ORDER BY occurred_at DESC
LIMIT 1

-- given answer:
SELECT w.occurred_at, w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id 
ORDER BY w.occurred_at DESC
LIMIT 1;

-- 04 Find the total number of times each type of channel from the web_events was used. Your final table should have two columns - the channel and the number of times the channel was used.

-- my answer:
SELECT w.channel, COUNT(w.channel)
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
GROUP BY w.channel


-- given answer:
SELECT w.channel, COUNT(*)
FROM web_events w
GROUP BY w.channel

-- 05 Who was the primary contact associated with the earliest web_event?

-- my answer:
SELECT a.primary_poc
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
ORDER BY occurred_at
LIMIT 1


-- given answer:
SELECT a.primary_poc
FROM web_events w
JOIN accounts a
ON a.id = w.account_id
ORDER BY w.occurred_at
LIMIT 1;

-- 06 What was the smallest order placed by each account in terms of total usd. Provide only two columns - the account name and the total usd. Order from smallest dollar amounts to largest.

-- my answer:
SELECT a.name, MIN(o.total) smallest
FROM accounts a
JOIN orders o
on a.id = o.account_id
GROUP BY a.name
ORDER BY smallest


-- given answer:
SELECT a.name, MIN(total_amt_usd) smallest_order
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
ORDER BY smallest_order;

-- 07 Find the number of sales reps in each region. Your final table should have two columns - the region and the number of sales_reps. Order from the fewest reps to most reps.
-- my answer:
SELECT r.name region, COUNT(s.name)
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
GROUP BY r.name

-- given answer:
SELECT r.name region, COUNT(s.id) sales_reps
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
GROUP BY r.name
ORDER BY sales_reps;
