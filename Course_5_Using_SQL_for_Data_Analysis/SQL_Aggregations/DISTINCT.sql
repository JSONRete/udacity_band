-- Code from the Video
-- Query 1:
SELECT  account_id,
        channel,
        COUNT(id) as events
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id, events DESC
-- Query 2:
SELECT  account_id,
        channel
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id
-- Query 3:
SELECT DISTINCT account_id,
                channel
FROM web_events
ORDER BY account_id