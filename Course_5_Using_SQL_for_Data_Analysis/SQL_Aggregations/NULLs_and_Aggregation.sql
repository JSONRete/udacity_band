-- Code from the Video
-- Query 1
SELECT *
FROM accounts
WHERE id > 1500 and id < 1600
-- Query 2
SELECT *
FROM accounts
WHERE primary_poc IS NULL
-- Query 3
SELECT *
FROM accounts
WHERE primary_poc IS NOT NULL