-- SELF JOIN joins a table with itself.
-- We use aliases (p1 and p2) to treat the same table
-- as two different copies.
-- Here, we compare players with other players
-- to find players who have the same coach.
-- p1 = first copy of players
-- p2 = second copy of players
-- <> means "not equal", so a player is not matched with themselves.

SELECT p1.player_id, p2.player_id, p1.coach_id
FROM players p1
JOIN players p2
ON p1.coach_id = p2.coach_id
AND p1.player_id <> p2.player_id;
