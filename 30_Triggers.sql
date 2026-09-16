-- TRIGGER automatically runs when an INSERT, UPDATE, or DELETE
-- happens on a table.
-- It is used to perform an action automatically.
--
-- BEFORE INSERT → runs before a new row is inserted.
-- AFTER INSERT  → runs after a new row is inserted.

DELIMITER //

CREATE TRIGGER before_player_insert
BEFORE INSERT ON players
FOR EACH ROW
BEGIN
    -- Automatically set sports to 'Unknown' if it is empty
    IF NEW.sports IS NULL THEN
        SET NEW.sports = 'Unknown';
    END IF;
END //

DELIMITER ;

-- NEW → refers to the new row being inserted.
-- The trigger runs automatically; no CALL is needed.

-- Trigger runs automatically BEFORE a player is updated.
-- OLD = previous value
-- NEW = new value

DELIMITER //

CREATE TRIGGER before_player_update
BEFORE UPDATE ON players
FOR EACH ROW
BEGIN
    IF NEW.sports IS NULL THEN
        SET NEW.sports = OLD.sports;
    END IF;
END //

DELIMITER ;
-- Trigger runs automatically AFTER a player is deleted.
-- OLD refers to the row that was deleted.

DELIMITER //

