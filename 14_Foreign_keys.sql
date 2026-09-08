-- FOREIGN KEY :
-- FOREIGN KEY connects a column in one table to the PRIMARY KEY of another table.
-- It helps maintain a relationship between the two tables.

CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    sports VARCHAR(30),
    coach_id INT,
    FOREIGN KEY (coach_id) REFERENCES coach(coach_id)
);
-- FOREIGN KEY connects coach_id in PLAYERS to coach_id in COACH table.\

-- foreign key after tabvle is created
alter table players
add constraint fk_coach_id
foreign key(coach_id) references coach(coach_id) 

-- delete foreign key
ALTER TABLE players
DROP FOREIGN KEY players_ibfk_1;
