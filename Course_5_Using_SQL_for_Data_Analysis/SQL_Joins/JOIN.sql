-- Code from the Video

-- Query1
SELECT orders.*
FROM orders

-- Query2
SELECT orders.*,
    accounts.*
FROM orders 
JOIN accounts
ON orders.account_id = accounts.id;

-- my first join given example:
SELECT orders.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

-- additional examples:
SELECT accounts.name, orders.occurred_at
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

SELECT *
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

SELECT orders.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;

-- my entered tries at JOIN's
-- 1st
SELECT *
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
-- slightly different ver from the one above:
SELECT orders.*, accounts.*
FROM accounts
JOIN orders
ON orders.account_id = accounts.id
-- 2nd
SELECT orders.standard_qty, orders.gloss_gty, orders.poster_qty, accounts.website, accounts.primary_poc
FROM accounts
JOIN orders
ON orders.account_id = accounts.id

-- 1st retries
-- im gonna try both this slightly flip the 1st one I tried
SELECT *
FROM orders
JOIN accounts
ON orders.account_id = accounts.id

SELECT *
FROM orders
JOIN accounts
ON accounts.id = orders.account_id
