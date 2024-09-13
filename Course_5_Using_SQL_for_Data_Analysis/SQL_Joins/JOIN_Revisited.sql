-- given test code:
SELECT *
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id
JOIN orders
ON accounts.id = orders.account_id

-- given 2nd test code:
SELECT web_events.channel, accounts.name, orders.total
