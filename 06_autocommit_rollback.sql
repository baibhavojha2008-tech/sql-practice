SELECT * FROM players;
SET AUTOCOMMIT = OFF;
-- Turns off automatic saving of changes.
-- Changes like INSERT, UPDATE, and DELETE are not permanently saved
-- until you use COMMIT.

-- COMMIT; -- Saves the UPDATE permanently

-- ROLLBACK;
-- Cancels the changes made after the last COMMIT.
-- Used when AUTOCOMMIT is OFF.
-- It returns the data to its previous saved state.