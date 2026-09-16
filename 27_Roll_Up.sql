-- ROLLUP creates a summary row (grand total)
-- along with the grouped results.
-- WITH ROLLUP is the MySQL syntax.

SELECT sports, COUNT(*) AS total_players
FROM players
GROUP BY sports WITH ROLLUP;
 