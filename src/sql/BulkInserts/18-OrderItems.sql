BULK INSERT sales.orders
FROM 'C:\SP\Notes, Practicals etc\AY 2223\DENG\Assignment2\src\csv\OrderItems.csv' -- Replace with your own path
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)

/*
    If that does not work, import the CSV file manually
    Use this as a guide
    https://qawithexperts.com/article/sql/import-csv-into-sql-server-with-query-or-without-query-using/265
    Afterwards, import all the data from your 2nd table with this query
    TLDR; Right click on the Assignment2 database > Tasks > Import Flat File > Specify Input File > Browse... > Find CSV file >
    ! IMPORTANT; YOU NEED TO MAKE SURE THE DATA TYPES ARE THE SAME AS THE sales.orders TABLE
    ! IMPORTANT; MAKE SURE THE SCHEMA IS sales
    (You can't import to an existing table for some reason)
    INSERT INTO
    <1st table>
    SELECT
    *
    FROM
    <2nd table>;
*/
