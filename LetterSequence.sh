#!/bin/bash

#Letter sequence game
#this script is like a memory game. The computer shows a sequence of letters, 
#and the player has to type the same sequence back correctly.

#I chose the 4 DNA letters
letters=("A" "T" "G" "C")

#This starts the sequence as empty. Each round, one new letter is added.
sequence=""

#This keeps track of what round the player is on.
round=1

echo "Welcome to Letter Sequence!"
echo "Repeat the letters exactly as they appear"
echo "You must correctly repeat 5 letters to win."
sleep 3
clear

#I used a while loop because the game needs to repeat until the player wins 
# or gets the sequence wrong.
while [ $round -le 5 ]
do
 #This randomly chooses one letter from the letter list.
number=$((RANDOM % 4))
case $number in
    0) 
       random_letter="A"
       ;;
    1)
       random_letter="T"
       ;;
    2)
       random_letter="G"
       ;;
    3) 
       random_letter="C"
       ;;

    esac

 # this adds the new random letter to the end of the sequence.
 sequence="${sequence}${random_letter}"

 echo "Round $round"
 echo "remember this sequence"
 echo "$sequence"

 # I used sleep so the player only sees the sequence for a short time.
 sleep 3

 # I used clear to hide the sequence before the player types it back.
 clear

 echo "Type the sequence you remember:"
 read -r answer
 answer=$(printf '%s' "$answer" | tr -d '\r\n' | tr '[:lower:]' '[:upper:]')
 answer=$(printf '%s' "$answer" | tr -cd 'ATGC')

 #This if statement compares the players answers to the correct sequence.
 #Bash is case-sensitive so typing lower case letters will count as wrong.

 if [ "$answer" = "$sequence" ] 
 then
     echo "Correct!"
    round=$((round + 1))
    sleep 2
    clear
 
 else
    echo "Incorrect."
    echo "The correct sequence was: $sequence"
    echo "Game Over!"
    exit
 

    fi 
 done

echo "You win!"
echo "You correctly repeated a sequence of 5 letters."

