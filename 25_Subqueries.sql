-- SUBQUERY is a query written inside another query.
-- The inner query runs first and its result is used
-- by the outer query.
-- It is written inside parentheses ( ).

-- Example: DUMMY TABLE FOR UNERSTANDING COCNECT
/*SELECT FIRST_NAME,lAST_NAME,HOURLY_PAY
FROM EMPLOYEES
WHERE HOURLY_PAY > (SELECT AVG(HOURLY_PAY) FROM EMPLOYESS); -- EQ TO= WHERE HOURLY_PAY>15.99*/
-- EXAMPLE:
SELECT F_NAME,L_NAME
FROM COACH
WHERE coach_id  IN (
    SELECT coach_id
    FROM PLAYERS
);

-- Inner query → finds coach_id from coach table. 
-- Outer query → finds players with those coach_id values.

-- Easy memory:
-- SUBQUERY = query inside another query
-- Inner query → runs first
-- Outer query → uses the result