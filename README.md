Overview
-
In this project, I had created a Bash script that enters data from World Cup games into PostgreSQL, then query the database for useful statistics.

Summary of the accomplished tasks:
-

1) Succesfully inserted all the data from "games.csv" into "worldcup" database with the "insert_data.sh" bash scripting.
   - Firstly, created 2 empty tables in "World Cup" database, namely "teams" and "games" table
   - Created **PSQL variables** with **Bash** scripting in **insert_data.sh** to read data from **games.csv** and insert them into tables
   - 
3) 




1) worldcup.sql:
   I created the "worldcup" database and its two tables: "teams" and "games".
   
2) insert_data.sh:
   I developed a bash script to insert data from World Cup games (games.csv) into the "games" and "teams" tables using PostgreSQL.
   
3) queries.sh:
   I completed the PostgreSQL query to produce the desired output.
