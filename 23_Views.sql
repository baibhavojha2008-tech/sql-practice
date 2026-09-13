-- VIEW is a virtual table based on a SELECT query.
-- It stores the query, not a separate copy of the data.
-- It can be used like a normal table to view specific data.

-- CREATE VIEW creates the view.
CREATE VIEW CAOCH_ATTENDANCE AS 
select f_name , l_name
from coach;
select * from caoch_attendance;
