what does sql stand for?
------

	structured query language

What are tables and fields in database?
------

	A table is a set of organized data. It has columns and rows. Columns can be categorized as vertical, and Rows are horizontal.

	A table contains specified number of columns called fields but can have any number of rows which is known as records.

What is a primary key?
------

	A primary key is a combination of fields which uniquely specifies a row. This is a special kind of unique key. Primary key values cannot be NULL.

What is a foreign key?
------

	A foreign key is specified as a key which is related to the primary key of another table. Relationship needs to be created between two tables by referencing foreign key with the primary key of another table.

What is a unique key?
------

	A Unique key constraint uniquely identifies each record in the database. This provides uniqueness for the column or set of columns.

What's the difference between a left and right join?
------

for a left join

users 
	1 arron
	2 sunita
	3 pavan
	4 jeff
	5 cat

product_sales
	1 furby 1 
	2 playstation 4

	select *
	from users 
	LEFT JOIN product_sales
	on users.id = product_sales.user_id;

	1 arron  furby
	2 sunita null
	3 pavan null
	4 jeff playstation
	5 cat null

	select *
	from users 
	RIGHT JOIN product_sales 
	on users.id = product_sales.user_id;

	1 furby 1 arron
	2 playstation 4 jeff

	select *
	from users 
	INNER JOIN product_sales 
	on users.id = product_sales.user_id;

	1 furby 1 arron
	2 playstation 4 jeff

How does one speed up SQL queries?
------

look at the speed_up_sql_queries.md file

Let's say you have an e commerce website with a  shopping cart, what would the database architecture look like? Discuss how the program works
------

customers can sign up or not

	they buy products

	if the customer spends 50 dollars then the shipping is free

product categories

customers
id, name, billing_address, shipping_address, credit_card_type, credit_card_nums

categories
id, name

products
id, name, category_id, price

orders
id, date

order_products
id, order_id, product_id, quanitity

1  2  1
1  3  2
1  4  1

order_customers
order_id, customer_id

guests
id, name, billing_address, shipping_address, credit_card_type, credit_card_nums 

order_guests
order_id, guest_id

What's the difference between a left and inner join?
------

When does one use a group by? 
------

Why is order important in SQL?
------

Give an example of a subquery and when you would use it
------

What are the differences between NoSQL and Relational DBs? Drawbacks?
------




