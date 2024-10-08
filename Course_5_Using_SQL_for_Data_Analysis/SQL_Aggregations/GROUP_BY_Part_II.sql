-- -- Code from the Video
-- -- Query 1:
-- SELECT  account_id,
--         channel,
--         COUNT(id) as events
-- FROM web_events
-- GROUP BY account_id, channel
-- ORDER BY account_id, channel
-- -- Query 2:
-- SELECT  account_id,
--         channel,
--         COUNT(id) as events
-- FROM web_events
-- GROUP BY account_id, channel
-- ORDER BY account_id, channel DESC


-- QUIZ SECTION:

-- 01 For each account, determine the average amount of each type of paper they purchased across their orders. Your result should have four columns - one for the account name and one for the average quantity purchased for each of the paper types for each account.
-- my answer:
SELECT a.name, AVG(o.standard_qty) standard, AVG(o.gloss_qty) gloss, AVG(o.poster_qty) poster
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
-- given answer:
SELECT a.name, AVG(o.standard_qty) avg_stand, AVG(o.gloss_qty) avg_gloss, AVG(o.poster_qty) avg_post
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name;

-- 02 For each account, determine the average amount spent per order on each paper type. Your result should have four columns - one for the account name and one for the average amount spent on each paper type.
-- my answer:
SELECT a.name, AVG(o.standard_amt_usd) standard_amt, AVG(o.gloss_amt_usd) gloss_amt, AVG(o.poster_amt_usd) poster_amt
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name
-- given answer:
SELECT a.name, AVG(o.standard_amt_usd) avg_stand, AVG(o.gloss_amt_usd) avg_gloss, AVG(o.poster_amt_usd) avg_post
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.name;
-- 03 Determine the number of times a particular channel was used in the web_events table for each sales rep. Your final table should have three columns - the name of the sales rep, the channel, and the number of occurrences. Order your table with the highest number of occurrences first.
-- my answer:
SELECT s.name, w.channel, COUNT(w.channel) count
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN web_events w
ON w.account_id = a.id
GROUP BY s.name, w.channel
ORDER BY count DESC
-- given answer:
SELECT s.name, w.channel, COUNT(*) num_events
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
JOIN sales_reps s
ON s.id = a.sales_rep_id
GROUP BY s.name, w.channel
ORDER BY num_events DESC;
-- 04 Determine the number of times a particular channel was used in the web_events table for each region. Your final table should have three columns - the region name, the channel, and the number of occurrences. Order your table with the highest number of occurrences first.
-- my answer:
SELECT r.name, w.channel, COUNT(w.channel)
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN web_events w
ON w.account_id = a.id
JOIN region r
ON s.region_id = r.id
GROUP BY r.name, w.channel
ORDER BY count DESC
-- given answer:
SELECT r.name, w.channel, COUNT(*) num_events
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id
GROUP BY r.name, w.channel
ORDER BY num_events DESC;