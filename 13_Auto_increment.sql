-- AUTO INCREMENT:
-- AUTO_INCREMENT automatically generates a unique number for each new row.
-- The value increases automatically (usually by 1).
CREATE TABLE PLAYER_DEMO(
 PLAYER_ID INT AUTO_INCREMENT PRIMARY KEY
 );
--  Meaning: PLAYER_ID will automatically get values like 1, 2, 3, 4, 5... when new players are inserted.

-- AUTO INCREMENT AFTER CERAYTING A TABLRE

ALTER TABLE PLAYERS
auto_increment = 1000;
-- STARTS FROM 1000
