#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
LETTERS=("A" "T" "C" "G")

WIN_LENGTH=7

SEQUENCE=()
echo "Watch carefully, then type them back in order."
echo "Each round adds one more letter. Get to 7 and you win!"
echo "Note: the game IS case sensitive, so type uppercase letters only."
echo "Press ENTER to start. DUUVAL!"

ROUND=1
GAME_OVER=false
# I used a while loop here because I dont know how many rounds the game will last.
# It keeps going until GAME_OVER becomes true, which happens when the player
# wins or loses. A for loop wouldnt work here because there is no number of rounds.
while [ "$GAME_OVER" = false ]
do
# pick a random letter and add it to the sequence
NEW_INDEX=$(( RANDOM % 4 ))
    SEQUENCE+=( "${LETTERS[$NEW_INDEX]}" ) 
# show the sequence one letter at a time
clear
echo "Round $ROUND -- watch the sequence!"
sleep 1
for LETTER in "${SEQUENCE[@]}"
do
     clear
     echo ""
     echo "  ---  $LETTER  ---"
     echo ""
     sleep 2
     clear
    sleep 0.5
done
# now ask the player to type it back
echo "Now you do it! Type each letter and press on the enter key."
echo "Sequence length: ${#SEQUENCE[@]}"
echo ""
CORRECT=true
 # I used a for loop with an index here so I can check each position one at a time.
 # I need to know which position I'm on so I can compare the right letters.
 # If the player gets one wrong I stop checking and mark it as incorrect.
 for (( i=0; i<${#SEQUENCE[@]}; i++ ))
 do
        echo -n "Letter $((i+1)): "
        read USER_INPUT
# this is the main comparison -- checks if what the player typed matches
# what the computer showed at that position
# = checks if two strings are equal in bash
# If the player types the right letter but lowercase (like 'a' instead of 'A')
# the comparison fails and they lose the round. Bash treats 'a' and 'A' as
# completely different strings. I kept it strict on purpose
  if [ "$USER_INPUT" = "${SEQUENCE[$i]}" ]
        then
            echo "Correct!"
        else
            echo "Wrong! You typed $USER_INPUT but it was ${SEQUENCE[$i]}."
            CORRECT=false
            break
        fi
done

 # now check what happened this round
 # if they got everything right, check if they reached the win condition
 # if they got something wrong, end the game
 if [ "$CORRECT" = true ]
    then
        if [ "${#SEQUENCE[@]}" -ge "$WIN_LENGTH" ]
        then
            clear
            echo "TOUCHDOWN! You win!!"
            echo "You repeated a $WIN_LENGTH base DNA sequence correctly. DUUVAL!"
            echo "Winning sequence: ${SEQUENCE[*]}"
            echo ""
            GAME_OVER=true
        else
            clear
            echo "Correct! Nice job. Get ready for the next round..."
            ROUND=$((ROUND + 1))
            sleep 1.5
        fi
    else
        clear
        echo "Game over. You made it to round $ROUND."
        echo "The full sequence was: ${SEQUENCE[*]}"
        echo ""
        echo "Play again? (y/n)"
        read PLAY_AGAIN
# check if the player wants to go again
# I check for both y and Y
if [ "$PLAY_AGAIN" = "y" ] || [ "$PLAY_AGAIN" = "Y" ]
        then
            SEQUENCE=()
            ROUND=1
            clear
            echo "Starting over!"
            sleep 1
        else
            echo "Thanks for playing"
            GAME_OVER=true
        fi 
    fi 
done
