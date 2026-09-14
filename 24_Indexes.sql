-- INDEX helps SQL find rows faster without scanning the whole table.
-- It is created on columns that are frequently searched or filtered.
-- CREATE INDEX creates an index on a column.

 
CREATE INDEX idx_sports
ON players(sports);

-- Use the index when searching/filtering the column.
SELECT * FROM players
WHERE sports = 'Cricket';
