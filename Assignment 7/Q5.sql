/*
    Why are correlated subqueries slower that non-correlated subqueries and joins?
*/

FROM THE SOLUTIONS:

"A correlated subquery (i.e., one in which the where condition depends on values obtained from the rows of the containing/outer query) will execute once for each row. A non-correlated subquery (one in which the where condition is independent of the containing query) will execute once at the beginning. If a subquery needs to run for each row of the outer query, that's going be very slow!"