-- STORED PROCEDURE is a saved SQL program that can be
-- executed whenever needed.
-- It can contain one or more SQL statements.
-- CALL is used to execute a stored procedure.

-- DELIMITER //

/* CREATE PROCEDURE get_players()
BEGIN
    SELECT * FROM players;
END //

DELIMITER ;

-- Execute the procedure:
CALL get_players();*/

-- Easy memory:
-- CREATE PROCEDURE → create/save the procedure
-- CALL             → execute the procedure
-- BEGIN ... END    → contains the SQL statements

-- A parameter allows us to pass a value to the procedure.

DELIMITER //

CREATE PROCEDURE get_players_by_coach(IN cid INT)
BEGIN
    SELECT * FROM players
    WHERE coach_id = cid;
END //

DELIMITER ;

CALL get_players_by_coach(1);