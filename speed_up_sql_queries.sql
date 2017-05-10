speeding up SQL queries:
------------------------
1. select the columns that you only need

select * from users; 

this is faster than the above query
select id, name from users;

2. you should monitor how much memory the database is using 

you should increase the memory on the server or add parallel servers to be able to take on more activity

3.
look for frequent queries 

and cache them 

look into 
Memcached for this

var inputName = $('inputName').val()

inputName

inputName

inputName

inputName
inputName
inputName
inputName



4. look for expensive queries

queries that take too long should be done as a background job


job.js
	you have a sql query inside of it that will create a csv file from that sql query
	and it will upload that csv file to amazon s3

if someone comes to your site and they want this csv report, what you'll do is you'll run job.js in the background 

the cron 
	you would run job.js later on, and you would not return the csv back to the browser, you would send a link to download the file to their email.


and a link to the data (csv) should be emailed to the user

5. 
one can use the execution plan to determine how a query can be sped up
https://dev.mysql.com/doc/refman/5.5/en/using-explain.html


6.
An index is used to speed up searching in the database. MySQL have some good documentation on the subject (which is relevant for other SQL servers as well): http://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html


======


select * from users 
where name = 'arron'

but if you have an index on the name column

it might just jump right to the names that have ar

you generally want to put indices on columns that you're doing lots of wheres on 

and columns that you are joining on a lot.


A very good analogy is to think of a database index as an index in a book. If you have a book regarding countries and you are looking for Brazil, then why would you flip through the entire book – which is the equivalent of a full table scan in database terminology – when you can just go to the index at the back of the book, which will tell you the exact pages where you can find information on Brazil. Similarly, as a book index contains a page number, a database index contains a pointer to the row containing the value that you are searching for in your SQL.

======

An index can be used to efficiently find all rows matching some column in your query and then walk through only that subset of the table to find exact matches. If you don't have indexes on any column in the WHERE clause, the SQL server has to walk through the whole table and check every row to see if it matches, which may be a slow operation on big tables.

The index can also be a UNIQUE index, which means that you cannot have duplicate values in that column, or a PRIMARY KEY which in some storage engines defines where in the database file the value is stored.

In MySQL you can use EXPLAIN in front of your SELECT statement to see if your query will make use of any index. This is a good start for troubleshooting performance problems. Read more here: http://dev.mysql.com/doc/refman/5.0/en/explain.html