#!/usr/bin/env bash

COMPUTER=25 #This should be randomly generated, but is static for now.

GUESS=0
while [ $GUESS -ne $COMPUTER ]
do
	read -p "Guess a number between 1 and 50: " GUESS
	if [ $GUESS -lt $COMPUTER ]
	then
		echo "Too low!"
		continue
	elif [ $GUESS -gt $COMPUTER ]
	then
		echo "Too high!"
		continue
	fi
done
echo "You guessed it right!"
exit 0

