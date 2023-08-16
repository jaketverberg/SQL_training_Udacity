### SELECT
/* 
Used to selct a column within a table 
*/

### FROM
/*
Used to select the table for which the SELECT will pull from
*/
SELECT *
    FROM web_events;


### LIMIT
/*
Used to limit the amount of results pulled from the query so as to not overwhelm the data pull or 
to just glance at the data
*/
SELECT id, occurred_at, account_id, events
    FROM web_events
    LIMIT 10;

### ORDER BY
/* 
Sorts the provided list by the column desired ascending. 
Can be used descending by amending DESC at the end of the query. 
MUST be written prior to the LIMIT function.
Only has temporary effects, for the results of that query, unlike sorting a sheet by column in Excel or Sheets.
When you provide a list of columns in an ORDER BY command, 
    the sorting occurs using the leftmost column in your list first, 
    then the next column from the left, and so on.
*/

SELECT id, occurred_at, account_id, events
    FROM web_events
    LIMIT 10
    ORDER BY account_id DESC;

### WHERE
/*
Filters the data based on below functionalities.
USE '' instead of ""
> (greater than)
< (less than)
>= (greater than or equal to)
<= (less than or equal to)
= (equal to)
!= (not equal to)
*/

SELECT id, occurred_at, account_id, events
    FROM web_events
    LIMIT 10
    WHERE name = 'Exxon Mobil';


### Derived Columns
/*
Creating a new column that is a combination of existing columns is known as a derived column 
    (or "calculated" or "computed" column). 
    Usually you want to give a name, or "alias," to your new column using the AS keyword.
This derived column, and its alias, are generally only temporary, existing just for the duration of your query.
* (Multiplication)
+ (Addition)
- (Subtraction)
/ (Division)
*/

### Logical Operators
/*
LIKE This allows you to perform operations similar to using WHERE and =, 
    but for cases when you might not know exactly what you are looking for.
    Frequently used with %. The % tells us that we might want any number of characters 
        leading up to a particular set of characters or following a certain set of characters
IN This allows you to perform operations similar to using WHERE and =, but for more than one condition.
NOT This is used with IN and LIKE to select all of the rows NOT LIKE or NOT IN a certain condition.
AND & BETWEEN These allow you to combine operations where all combined conditions must be true.
OR This allows you to combine operations where at least one of the combined conditions must be true.
*/

### JOIN
/*
JOIN statements allow us to pull data from more than one table at a time.
Use ON clause to specify a JOIN condition which is a logical statement to combine 
    the table in FROM and JOIN statements.
JOIN - an INNER JOIN that only pulls data that exists in both tables.
LEFT JOIN - pulls all the data that exists in both tables, as well as all of the rows 
    from the table in the FROM even if they do not exist in the JOIN statement.
RIGHT JOIN - pulls all the data that exists in both tables, as well as all of the rows
     from the table in the JOIN even if they do not exist in the FROM statement.
*/
SELECT w.*
FROM web_events w
JOIN accounts a
	ON w.account_id = a.id;


A primary key is a unique column in a particular table. This is the first column in each of our tables.
A foreign key is a column in one table that is a primary key in a different table.


When identifying NULLs in a WHERE clause, we write IS NULL or IS NOT NULL. 
    We don't use =, because NULL isn't considered a value in SQL. Rather, it is a property of the data.

GROUP BY can be used to aggregate data within subsets of the data.
    Any column in the SELECT statement that is not within an aggregator must be in the GROUP BY clause.
    The GROUP BY always goes between WHERE and ORDER BY.

DISTINCT is always used in SELECT statements, and it provides the unique rows 
    for all columns written in the SELECT statement. 
    Therefore, you only use DISTINCT once in any particular SELECT statement.
Its worth noting that using DISTINCT, particularly in aggregations, can slow your queries down quite a bit.


HAVING is the “clean” way to filter a query that has been aggregated, 
    but this is also commonly done using a subquery. 
    Essentially, any time you want to perform a WHERE on an element of your query that was created by an aggregate, 
    you need to use HAVING instead.
HAVING appears after the GROUP BY clause but before the ORDER BY clause.

DATE_TRUNC allows you to truncate your date to a particular part of your date-time column. 
Common trunctions are day, month, and year


DATE_PART can be useful for pulling a specific portion of a date, 
    but notice pulling month or day of the week (dow) means that you are no longer keeping the years in order.


CASE statement always goes in the SELECT clause.
CASE must include the following components: WHEN, THEN, and END. 
ELSE is an optional component to catch cases that didnt meet any of the other previous CASE conditions.
