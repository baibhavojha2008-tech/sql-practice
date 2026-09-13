-- LIMIT is used to restrict the number of rows returned.
-- It tells SQL how many records to display.
--
-- Example:
SELECT * FROM players
LIMIT 3;

-- This returns only the first 3 rows.

-- Easy memory:
-- LIMIT = maximum number of rows to show.

SELECT * FROM players
ORDER BY player_id DESC
LIMIT 3;

-- This sorts players from highest player_id to lowest
-- and displays only the first 3 rows.
--
-- Easy memory:
-- ORDER BY = SORT
-- LIMIT = HOW MANY ROWS

-- OFFSET skips rows, LIMIT controls how many rows are returned.

SELECT * FROM players
LIMIT 3 OFFSET 2;