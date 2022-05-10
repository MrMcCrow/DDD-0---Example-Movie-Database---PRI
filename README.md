# DDD-0---Example-Movie-Database---PRI
This is the standard example Sakila database that comes with MySQL.  It has way more than pupils need for N5/Higher, however it is fun to play with, but uncommenting and adapting the queries provided in ```main.sql```.

This is a bare bones SQLite repl for use in school.

main.sql has some boilerplate to add columns, headers etc.
```schema.sql``` creates trhe tables
```data.sql``` is a simple file to list the various different ```.sql``` ```INSERT``` files
For ease of reading, each table's ```INSERT```s are in their own ```.sql``` file - add more ```.read <filename>.sql``` as need to ```data.sql```

SQLite does not seem to like altering tables once created.

```schema_constraints.sql``` has the SQA instructions on how to add constraints to the database schema.
