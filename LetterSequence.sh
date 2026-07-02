#!/bin/bash

#This is where you will write your lettersequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
#This game tests your memory by showing letters for 5 seconds
#You must repeat the correct letters back
#It starts with 3 letters and additional letters are added as you progress
#Game ends on first wrong answer

#create alphebet list
letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

#get first 2 characters of the sequence and set score to 0
rand1=$(( RANDOM % 26 )) #get random index for first letter
rand2=$(( RANDOM % 26 )) #get random index for second letter
sequence="${letters[$rand1]}${letters[$rand2]}" #generate first sequence from random characters from list
score=0

echo "Greetings, this is a game where you have to memorize letters"
echo "Each time you get it right, difficulty will be increased by adding more letters"
echo "This game is case insensitive"
echo "Press enter to start"
read -r

while true; do
    # generate a random letter from the list to add to the sequence
    random_letter=$(( RANDOM % 26 )) #get random index for list
    sequence="${sequence}${letters[$random_letter]}" #add letter to sequence

    # Show the letters and clear them
    clear
    echo "Memorize this:"
    echo ""
    echo "   $sequence"
    echo ""
    sleep 5 #show letters for 5 seconds

    clear
    echo "What were the letters shown?"
    read -r answer #read user input for answer

    # Convert answer to all uppercase
    answer="${answer^^}"

    #check answer
    if [[ "$answer" == "$sequence" ]]; then #if answer matches
        score=$((score + 1)) #add 1 to score
        echo ""
        echo "Hooray! You got it!"
        echo "Your total score is now: $score"
        sleep 3
    else #incorrect answer
        echo ""
        echo "Incorrect!"
        echo "The correct answer was: $sequence"
        echo "You entered: $answer"
        echo ""
        echo "Final Score: $score"
        break #end game
    fi
done

echo "Game over!"
