-- code from videos:
-- Code from Video1
SELECT account_id,
    occurred_at,
    standard_qty,
    gloss_qty,
    poster_qty
FROM orders
WHERE standard_qty = 0 OR gloss_qty = 0 OR poster_qty = 0
-- Code from Video 2
SELECT account_id,
    occurred_at,
    standard_qty,
    gloss_qty,
    poster_qty
FROM orders
WHERE (standard_qty = 0 OR gloss_qty = 0 OR poster_qty = 0)
AND occurred_at >= '2016-10-01'

-- Questions using the OR operator
Find list of orders ids where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table.


Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.


Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or 'Ana', but it doesn't contain 'eana'.