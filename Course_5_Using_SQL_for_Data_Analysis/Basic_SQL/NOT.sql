-- Code from the Video
-- Query 1

SELECT sales_rep_id, 
       name
FROM accounts
WHERE sales_rep_id NOT IN (321500,321570)
ORDER BY sales_rep_id
-- Query 2

-- Code from the video has been modified to match our database schema in the workspaces.
SELECT *
FROM accounts
WHERE website NOT LIKE '%com%';