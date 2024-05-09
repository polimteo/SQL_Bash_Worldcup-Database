#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


echo $($PSQL "TRUNCATE teams, games")

#reading data from games.csv 
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  
  if [[ $WINNER != "winner" ]] #Exclude the title row from the data when reading the "games.csv" file.

      then

        #get winner_id
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
     
        
        if [[ -z $WINNER_ID ]] #if winner_id not found 
    
          then #then insert new winner data into teams table
            INSERT_WINNER_ID=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
            
            #get winner_id
            WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")

       
        fi
  

        #get opponent_id
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

        
        if [[ -z $OPPONENT_ID ]] #if opponent_id not found

        then #then insert new opponent into teams table
          INSER_OPPONENT_ID=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
        
          #get opponent_id
          OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")


        fi

      #insert necessary data into games table
      INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")


  fi
  

done
