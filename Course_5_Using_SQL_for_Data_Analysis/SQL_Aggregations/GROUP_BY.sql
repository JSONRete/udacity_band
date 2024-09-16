-- Code from the Video
-- Query 1: Results in an error
SELECT  account_id,
        SUM(standard_qty) AS standard,
        SUM(gloss_qty) AS gloss,
        SUM(poster_qty) AS poster
    FROM orders
-- Query 2:
SELECT  account_id,
        SUM(standard_qty) AS standard,
        SUM(gloss_qty) AS gloss,
        SUM(poster_qty) AS poster
    FROM orders
GROUP BY account_id
ORDER BY account_id