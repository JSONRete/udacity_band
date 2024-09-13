/*Question 01
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


/*Question 02
Provide a table that provides the region for each sales_rep along with their associated 
accounts. Your final table should include three columns: the region name, the sales rep 
name, and the account name. Sort the accounts alphabetically (A-Z) according to the account name.*/

SELECT r.name Region, s.name Rep, a.name Account
FROM accounts a
JOIN sales_reps s
ON s.id = a.sales_rep_id
JOIN region r
ON r.id = s.region_id
ORDER BY  a.name
