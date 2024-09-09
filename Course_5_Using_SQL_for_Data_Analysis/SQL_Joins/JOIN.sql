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