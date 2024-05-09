Overview
-
In this project, I had created a Bash script that enters data from World Cup games into PostgreSQL, then query the database for useful statistics.

Summary of the accomplished tasks:
-

1) Succesfully inserted all the data from **[games.csv](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/games.csv)** into **[worldcup](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/worldcup.sql)** database using the **[insert_data.sh](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/insert_data.sh)** Bash script.
   
   - Firstly, I created two empty tables in **[World Cup](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/worldcup.sql)** database, namely **teams** and **games** tables.
     
   - Next, I created the **[insert_data.sh](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/insert_data.sh)** with **Bash script** to automate the database query process with **PSQL variables**. I then utilized the script to read data from **[games.csv](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/games.csv)** and insert it into the tables using **PSQL variables**.  

2) Successfully completed the queries within the **[queries.sh](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/queries.sh)** script, utilizing **PostgreSQL variables** to achieve the desired output outlined in **[expected_output.txt](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/expected_output.txt)**.

