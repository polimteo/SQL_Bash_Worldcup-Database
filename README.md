Overview
-
In this project, I had created a Bash script that enters data from World Cup games into PostgreSQL, then query the database for useful statistics.

Summary of the accomplished tasks:
-

1) Succesfully inserted all the data from **[games.csv](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/games.csv)** into **[worldcup](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/worldcup.sql)** database using the **[insert_data.sh](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/insert_data.sh)** Bash script.
   
   - Firstly, I created two empty tables in **[World Cup](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/worldcup.sql)** database, namely **teams** and **games** tables.
     
   - Next, I created the **[insert_data.sh](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/insert_data.sh)** with **Bash script** to automate the database query process with **PSQL variables**. I then utilized the script to read data from **[games.csv](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/games.csv)** and insert it into the tables using **PSQL variables**.  

2) Successfully completed the queries within the **[queries.sh](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/queries.sh)** script, utilizing **PostgreSQL variables** to achieve the desired output outlined in **[expected_output.txt](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/expected_output.txt)**.

Teams Table
-
![image](https://github.com/polimteo/freecodecamp-worldcup-database/assets/167663336/fedb39a3-010d-4fee-8135-37dba3f4e874)

Games Table
-
![image](https://github.com/polimteo/freecodecamp-worldcup-database/assets/167663336/c8dc38e5-abd5-49a7-8ead-1f9038e63878)

The output queries for queries.sh exactly same as expected [output](https://github.com/polimteo/freecodecamp-worldcup-database/blob/main/expected_output.txt)
-
![image](https://github.com/polimteo/freecodecamp-worldcup-database/assets/167663336/8d31bb2f-20d0-4162-8499-5d3f658ae79a)

![image](https://github.com/polimteo/freecodecamp-worldcup-database/assets/167663336/ac0ed9f1-eed7-4027-ad80-2710b0164308)
