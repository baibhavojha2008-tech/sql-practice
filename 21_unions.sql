-- UNION combines the results of two or more SELECT queries.
-- Each SELECT must have the same number of columns
-- with compatible data types.
-- UNION removes duplicate rows.

SELECT * FROM players
UNION
SELECT * FROM coach
LIMIT 3;

-- IF WE WRITE COMMAND UNION ALL THEN IT SHOWS DUPLICATE ROWS