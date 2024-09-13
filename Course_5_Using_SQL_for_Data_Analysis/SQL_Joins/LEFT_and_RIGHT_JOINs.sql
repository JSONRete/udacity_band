-- Code from the Video
SELECT a.id, a.name, o.total
FROM orders o
JOIN accounts a
ON o.account_id = a.id

-- Code from the Video
-- Query1
SELECT a.id, a.name, o.total
FROM orders o
LEFT JOIN accounts a
ON o.account_id = a.id
-- Query2
SELECT a.id, a.name, o.total
FROM orders o
RIGHT JOIN accounts a
ON o.account_id = a.id