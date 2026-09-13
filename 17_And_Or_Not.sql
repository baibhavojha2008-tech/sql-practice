-- AND → returns records only when ALL conditions are true.
-- OR  → returns records when AT LEAST ONE condition is true.
-- NOT → returns records that DO NOT match the condition.

-- AND: both conditions must be true
SELECT * FROM players
WHERE sports = 'Cricket' AND coach_id = 1;

-- OR: either condition can be true
SELECT * FROM players
WHERE sports = 'Cricket' OR sports = 'Football';

-- NOT: excludes the specified condition
SELECT * FROM players
WHERE NOT sports = 'Cricket';