#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t -q --no-align -c"

echo "Enter your username:"
read USERNAME

USER=$($PSQL "SELECT * FROM users WHERE username = '$USERNAME'")

if [[ -z $USER ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  GAMES_PLAYED=0
else
  read USERNAME GAMES_PLAYED BEST_GAME <<< "${USER//|/ }"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read USER_GUESS

while [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
do
  echo "That is not an integer, guess again:"
  read USER_GUESS
done

SECRET_NUMBER=$(($RANDOM % 1000 + 1))
NUMBER_OF_GUESSES=1

echo $SECRET_NUMBER

while [[ $USER_GUESS -ne $SECRET_NUMBER ]]
do
  if [[ $USER_GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    read USER_GUESS
  else
    echo "It's lower than that, guess again:"
    read USER_GUESS
  fi

  ((NUMBER_OF_GUESSES++))
done

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

((GAMES_PLAYED++))

if [[ -z $USER ]]
then
  $PSQL "INSERT INTO users(username, games_played, best_game) VALUES ('$USERNAME', $GAMES_PLAYED, $NUMBER_OF_GUESSES)"
else
  if [[ $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
  then
    BEST_GAME=$NUMBER_OF_GUESSES
  fi
  $PSQL "UPDATE users SET games_played = $GAMES_PLAYED, best_game = $BEST_GAME WHERE username = '$USERNAME'"
fi
