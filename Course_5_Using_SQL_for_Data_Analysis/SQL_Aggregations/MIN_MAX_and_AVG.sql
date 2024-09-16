-- 01 When was the earliest order ever placed? You only need to return the date.
SELECT MIN(occurred_at)
FROM orders

-- 02 Try performing the same query as in question 1 without using an aggregation function.
SELECT occurred_at
FROM orders
ORDER BY occurred_at
LIMIT 1

-- 03 When did the most recent (latest) web_event occur?
SELECT MAX(occurred_at)
FROM web_events

-- 04 Try to perform the result of the previous query without using an aggregation function.
SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1

-- 05 Find the mean (AVERAGE) amount spent per order on each paper type, as well as the mean amount of each paper type purchased per order. Your final answer should have 6 values - one for each paper type for the average number of sales, as well as the average amount.
SELECT  AVG(standard_amt_usd) AS standard_avg_spent,
        AVG(gloss_amt_usd) AS gloss_avg_spent,
        AVG(poster_amt_usd) AS poster_avg_spent,
        AVG(standard_qty) AS standard_avg_amount,
        AVG(gloss_qty) AS gloss_avg_amount,
        AVG(poster_qty) AS poster_avg_amount
FROM orders

-- 06 Via the video, you might be interested in how to calculate the MEDIAN. Though this is more advanced than what we have covered so far try finding - what is the MEDIAN total_usd spent on all orders?
SELECT SUM(total_amt_usd)/SUM(total) median_total_usd
FROM orders