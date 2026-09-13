-- ORDER BY is used to sort the result.
-- ASC  → ascending order (small to large / A to Z).
-- DESC → descending order (large to small / Z to A).
-- ASC is the default order if not specified.

SELECT * FROM players
ORDER BY player_id ASC;

-- Example for descending order:
SELECT * FROM players
ORDER BY player_id DESC;