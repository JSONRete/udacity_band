-- Code from the Video

SELECT *
FROM accounts
WHERE website LIKE '%google%';


-- Questions using the LIKE operator
-- Use the accounts table to find

-- All the companies whose names start with 'C'.

SELECT *
FROM accounts
WHERE name LIKE 'C%';

SELECT name
FROM accounts
WHERE name LIKE 'C%';

-- All companies whose names contain the string 'one' somewhere in the name.


-- All companies whose names end with 's'.
