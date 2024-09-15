-- Code from the Video
-- Query 1
SELECT *
FROM orders
WHERE occurred_at >= '2016-12-01'
AND occurred_at < '2017-01-01'
-- Query 2
SELECT COUNT(*)
FROM orders
WHERE occurred_at >= '2016-12-01'
AND occurred_at < '2017-01-01'
-- Query 3
SELECT COUNT(*) AS order_count
FROM orders
WHERE occurred_at >= '2016-12-01'
AND occurred_at < '2017-01-01'