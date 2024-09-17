-- Code from the Video
-- Query 1:
SELECT  account_id,
        channel,
        COUNT(id) as events
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id, events DESC
-- Query 2:
SELECT  account_id,
        channel
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id
-- Query 3:
SELECT DISTINCT account_id,
                channel
FROM web_events
ORDER BY account_id

-- QUIZ:
-- 01 Use DISTINCT to test if there are any accounts associated with more than one region.
-- my answer:
SELECT r.id as "Region ID",  r.name as "Region", a.id as "Account ID", a.name as "Account Name"
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id

-- compared to:

SELECT DISTINCT a
FROM accounts a

-- given answer:
SELECT a.id as "account id", r.id as "region id", 
a.name as "account name", r.name as "region name"
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id;

-- compared to:

SELECT DISTINCT id, name
FROM accounts;

-- 02 Have any sales reps worked on more than one account?
-- my answer:
SELECT s.id "ID#", s.name "Name", COUNT(s.name) "Number of Accounts"
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
GROUP BY s.id, s.name
ORDER BY "Number of Accounts";

-- compared to:
SELECT DISTINCT s
FROM sales_reps s

-- given answer:
SELECT s.id, s.name, COUNT(*) num_accounts
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
GROUP BY s.id, s.name
ORDER BY num_accounts;

-- compared to:

SELECT DISTINCT id, name
FROM sales_reps;