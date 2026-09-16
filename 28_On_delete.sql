-- ON DELETE SET NULL = WHEN FK IS DELETED, REPLACE FK WITH NULL
-- ON DELETE CASCODE = WHEN FK IS DELETED, DELETE ROW

-- ON DELETE defines what happens to related rows in the
-- child table when the referenced row in the parent table
-- is deleted.
--
-- Example:
-- coach = parent table
-- players = child table
--
-- ON DELETE CASCADE → automatically deletes related players.
-- ON DELETE SET NULL → sets coach_id to NULL.
-- ON DELETE RESTRICT → prevents deleting the coach if players
--                        are still linked to that coach.
--
-- Easy memory:
-- ON DELETE = "What should happen to related data when
--              the parent row is deleted?"

-- WHEN NEW TABLE
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    sports VARCHAR(30),
    coach_id INT,
    FOREIGN KEY (coach_id)
        REFERENCES coach(coach_id)
        ON DELETE CASCADE
);
-- If a coach is deleted, the coach_id of related players
-- is automatically changed to NULL.

CREATE TABLE players (
    player_id INT PRIMARY KEY,
    sports VARCHAR(30),
    coach_id INT,
    FOREIGN KEY (coach_id)
        REFERENCES coach(coach_id)
        ON DELETE SET NULL
);

-- CHANGE IN ALREADY CREATED TABLE

-- Remove the existing foreign key
ALTER TABLE players
DROP FOREIGN KEY players_ibfk_1;

-- Add the foreign key with ON DELETE CASCADE
ALTER TABLE players
ADD CONSTRAINT players_ibfk_1
FOREIGN KEY (coach_id)
REFERENCES coach(coach_id)
ON DELETE CASCADE;