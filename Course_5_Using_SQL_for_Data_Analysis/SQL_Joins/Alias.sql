-- Code from the Video
SELECT o.*, a.*
FROM orders o
JOIN accounts a
ON o.account_id = a.id

-- the orders 'true' id is 'overridden' by the accounts id until I 'AS' the order id name

SELECT o.id order_id, a.id accounts
FROM orders o
JOIN accounts a
ON o.account_id = a.id