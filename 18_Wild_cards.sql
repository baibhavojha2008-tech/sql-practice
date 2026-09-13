-- WILDCARDS are special characters used with LIKE
-- to search for patterns in text.
--
-- % → represents zero or more characters.
-- _ → represents exactly one character.
--
-- Example:
-- 'C%'  → starts with C
-- '%t'  → ends with t
-- '%ri%' → contains "ri"
-- 'C____' → starts with C and has exactly 5 characters

SELECT * FROM players
WHERE sports LIKE 'C%';