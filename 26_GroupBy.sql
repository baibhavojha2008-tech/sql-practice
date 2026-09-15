-- GROUP BY groups rows with the same value.
-- It is mainly used with aggregate functions like COUNT(),
-- SUM(), AVG(), MAX(), and MIN().
-- Here, players are grouped according to their sports.

SELECT sports, COUNT(*) AS total_players
FROM players
GROUP BY sports;

-- GROUP BY = make groups of similar values
-- COUNT() = count rows in each group  