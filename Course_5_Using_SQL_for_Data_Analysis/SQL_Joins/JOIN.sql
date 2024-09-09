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