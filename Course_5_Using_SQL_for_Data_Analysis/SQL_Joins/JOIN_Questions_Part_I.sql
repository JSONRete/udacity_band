/*
Question 01
Provide a table for all web_events associated with the account name of Walmart. 
There should be three columns. Be sure to include the primary_poc, time of the event
and the channel for each event. Additionally, you might choose to add a fourth column
to ensure only Walmart events were chosen.
*/

SELECT a.primary_poc, w.occurred_at, w.channel, a.name
FROM WEB_EVENTS w
JOIN accounts a
ON a.id = w.account_id
WHERE a.name = 'Walmart';