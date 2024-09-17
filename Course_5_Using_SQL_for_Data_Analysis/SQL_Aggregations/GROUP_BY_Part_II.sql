-- Code from the Video
-- Query 1:
SELECT  account_id,
        channel,
        COUNT(id) as events
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id, channel
-- Query 2:
SELECT  account_id,
        channel,
        COUNT(id) as events
FROM web_events
GROUP BY account_id, channel
ORDER BY account_id, channel DESC