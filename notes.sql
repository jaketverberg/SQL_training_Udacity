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
    ORDER BY account_id;

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