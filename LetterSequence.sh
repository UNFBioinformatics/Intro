#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.

# Color Sequence Game (ATCG)
# Author: Eh Pweh
#
# The computer shows a sequence of letters.
# The player must type the sequence correctly.
# If the player is correct, another letter is added.
# The player wins after correctly repeating
# a sequence of 3 letters.
#
# I chose a WHILE loop because the game repeats
# until the player either wins or makes a mistake.
#
# The comparison is case-sensitive.
# If the computer displays "ABC" and the player
# enters "abc", it will count as incorrect.

letters=("A" "T" "C" "G")

sequence=""
round=1
goal=3

echo "================================"
echo " Welcome to Letter Sequence!"
echo "================================"
echo
echo "Memorize the letters."
echo "Repeat them exactly."
echo

sleep 2

while [ $round -le $goal ]
do
    # Pick a random letter
    random=${letters[$RANDOM % 4]}

    # Add the new letter to the sequence
    sequence="$sequence$random"

    echo "Round $round"
    sleep 1

    # Show each letter briefly
    for (( i=0; i<${#sequence}; i++ ))
    do
        clear
        echo "${sequence:$i:1}"
        sleep 1
    done

    clear

    # Accept input from player
    echo "Enter the sequence:"
    read answer

    # Compare the player's answer to the sequence
    if [ "$answer" = "$sequence" ]
    then
        echo "Correct!"
        sleep 2
        round=$((round + 1))
        clear
    else
        echo "Sorry, that was incorrect."
        echo "The correct sequence was: $sequence"
        exit 0
    fi

done

echo "Congratulations, You win!"
echo "You completed all $goal rounds!"