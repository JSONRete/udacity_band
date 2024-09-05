-- Questions
-- Write a query that displays the order ID, account ID, and total dollar amount for all the orders, sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
-- Now write a query that again displays order ID, account ID, and total dollar amount for each order, but this time sorted first by total dollar amount (in descending order), and then by account ID (in ascending order).
-- Compare the results of these two queries above. How are the results different when you switch the column you sort on first?
-- Below is the workspace where you can write your queries. Once you write your queries against the above mentioned questions, you can click on the EVALUATE button at the bottom of the workspace. And the workspaces have the required tables loaded already.

-- my 1st answer for 1st question:

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id ASC, total_amt_usd DESC

