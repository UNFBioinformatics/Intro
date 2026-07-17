#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
#   I am using ATCG because they are DNA Bases and DNA sequences resemble code quite a bit, connecting to biology. 
letters=("A" "T" "C" "G")   
#   This variable will keep the growing sequence of letters.
sequence="" 
#   The game will repeat until the player makes a mistake so I am using a while loop.
while true; do
#   To generate a random letter, I will pick a random index from the leters array.
RANDOM_index=$(( RANDOM % 4 ))
new_letter=${letters[$RANDOM_index]}
#   I want to add the new letter to the existing sequence.
sequence="$sequence$new_letter"
#   I use sleep and clear to stimulate the flashing effect of the Color Sequence game.
clear
echo "Memorize this sequence:"
sleep 1
for letter in $(echo $sequence | fold -w1); do
echo "$letter"
sleep 1
clear
done
#The use must type the sequence exactly as shown, with correct uppercase.
echo "Type the full sequence:"
read player_input
# NOTE: Bash comparisons are case-sensitive
#If user types 'g' instead of 'G', the comparison fails even if letter is correct. 
if [[ "$player_input" == "$sequence" ]]; then
echo "Correct!"
else
echo "Incorrect! Game Over."
exit 0
fi 
#Win condition: player must reach at least 3 letters.
if [[ ${#sequence} -ge 3 ]]; then
echo "You reached 3 letters! You win!"
exit 0
fi 
done
