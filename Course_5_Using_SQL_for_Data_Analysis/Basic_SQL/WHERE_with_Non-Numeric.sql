-- Practice Question Using WHERE with Non-Numeric Data
-- Filter the accounts table to include the company name, website, and the primary point of contact (primary_poc) just for the Exxon Mobil company in the accounts table. Practice this in the workspace that follows.

-- my entered answer:

SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil';