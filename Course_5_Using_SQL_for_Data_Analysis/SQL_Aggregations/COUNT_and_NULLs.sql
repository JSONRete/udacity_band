-- Code from the Video
-- Query 1
SELECT COUNT (*) AS account_count
FROM accounts
-- Query 2
SELECT COUNT (id) AS account_id_count
FROM accounts
-- Query 3
SELECT COUNT(primary_poc) AS account_primary_poc_count
FROM accounts
-- Query 4
-- Example: there will not be any NULL values in the workspace.

SELECT *
FROM accounts
WHERE primary_poc IS NULL