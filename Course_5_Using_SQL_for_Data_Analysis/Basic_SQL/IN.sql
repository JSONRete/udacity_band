-- given code

-- Code from the Video
SELECT *
FROM orders
WHERE account_id IN (1001,1021);

-- quiz problem

-- Questions using IN operator
-- Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom')

-- Use the web_events table to find all information regarding individuals who were contacted via the channel of organic or adwords.