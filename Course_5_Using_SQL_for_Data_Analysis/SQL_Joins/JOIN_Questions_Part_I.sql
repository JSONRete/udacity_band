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

-- given answer:

SELECT a.primary_poc, w.occurred_at, w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
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
ORDER BY  a.name;

-- given answer:

SELECT r.name region, s.name rep, a.name account
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
ORDER BY a.name;

/*Question 03
Provide the name for each region for every order, as well as the account name and the 
unit price they paid (total_amt_usd/total) for the order. Your final table should have 
3 columns: region name, account name, and unit price. A few accounts have 0 for total, 
so I divided by (total + 0.01) to assure not dividing by zero.*/

SELECT r.name region_name, a.name account_name, o.total_amt_usd/(o.total + 0.01) unit_price
FROM accounts a
JOIN orders o
ON o.account_id = a.id
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON s.region_id = r.id

-- given answer:

SELECT r.name region, a.name account, 
    o.total_amt_usd/(o.total + 0.01) unit_price
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id;