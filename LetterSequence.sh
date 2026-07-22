#!/bin/bash

#This is where you will write your LetterSequence.sh script.
echo "Welcome to the DNA Letter Sequencing Game where you will learn how to code and modify genetic sequences!"
echo
echo "You will be shown how to create a DNA sequence by adding one letter at a time until a complete sequence is generated"
echo "In each round, a single letter is added and the sequence is extended"
echo "In order to play correctly and win, the sequence must be repeated in the order it was given"
echo "5 letters must be correct;y repeated in order to win"

echo "DNA base pairs"
#Four letters will be displayed
#Player must pick one letter to add to the sequence
echo "A" "T" "G" "C"
read-space "Press Space to Start"
#Game resumes after player reads and understands instructions before pressing start

#Possible letters that can be chosen by computer and added into the sequence
letters=("A" "T" "G" "C")

#How sequence is controlled and stored
sequence= ""

#This variable keeps track of game/round
game= ""

#This variable informs the player that they have won after correctly repeating 5 letters with no mistakes
win_length=5

#This game is ended after an incorrect letter is inputted

while true
do

#A random array of letters is given, the player must choose one to continue
random_index=$( ( RANDOM % 4 ) ) 
new_letter=${letters[$random_index]}

#Add the new letter to the sequence 
sequence="${sequence}${new_letter}"

echo "Starting Game $game"
#sequence is provided, player must remember it 
echo "Remember this sequence"
echo 
echo 

#Player must type previously provided sequence 
read-p "Type sequence"

#Check if sequences match 
if ["$answer' = '$sequence"]; then 
echo "Correct"
echo 

#If the sequence is 5 letters long, player wins
if [${#sequence}=$win_length]; then 
echo "You win! The $win_length were repeated correctly "
break 

fi

#Player moves to the next game
game=$((game+1))

else

echo 
echo "Starting Game $game"
#sequence is provided, player must remember it
echo "Remember this sequence"
echo "$sequence"
echo 

#Player must type previously provided sequence
read-p "Type sequence: "

#If the answers don't match
If ["$answer' = '$sequence"]; then 
echo "Incorrect"
echo "The correct sequence was: $sequence"
echo "Game over"
break 
fi

done

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
