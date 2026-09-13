# Joins
-- JOINs are used to combine data from two or more tables using a related column.
/* 
LEFT JOIN  → ALL from LEFT table + matching from RIGHT
RIGHT JOIN → ALL from RIGHT table + matching from LEFT
INNER JOIN → ONLY matching from BOTH
*/


SELECT *
FROM players
INNER JOIN coach
ON players.coach_id = coach.coach_id;

-- INNER JOIN combines two tables using a matching column.
-- ON specifies how the tables are connected.
-- Here, players.coach_id (FK) matches coach.coach_id (PK).
-- Only matching records from both tables are returned.

SELECT *
FROM players
LEFT JOIN coach
ON players.coach_id = coach.coach_id;

-- LEFT JOIN returns ALL records from the left table (players)
-- and matching records from the right table (coach).
-- If there is no match, coach columns show NULL.

SELECT *
FROM players
RIGHT JOIN coach
ON players.coach_id = coach.coach_id;

-- RIGHT JOIN returns ALL records from the right table (coach)
-- and matching records from the left table (players).
-- If there is no match, players columns show NULL.
