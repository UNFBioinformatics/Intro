#!/bin/bash

#Hi! This is my script :) We begin w/ a little introduction for the player...
echo "Sequencing Memory Game"
echo "A ribosome is building a protein..."
echo "Help it build by memorizing the amino acid sequence!"
sleep 5
clear

#There are 20 amino acids, each will be given a one-letter code
amino=("A" "R" "N" "D" "C" "E" "Q" "G" "H" "I" "L" "K" "M" "F" "P" "S" "T" "W" "Y" "V")

#We begin w/ M, the one and only start codon: methionine
sequence="M"
round=1
goal=5

#Our loop! It will continue until the player correctly inputs 5 amino acids
while [ $round -le $goal ]
do

#Again, we begin w/ M. Everything after is random
#Thus, the loop will continue w/ ONE random amino acid
if [ $round -gt 1 ]
then
    random=${amino[$((RANDOM % 20))]}
    sequence="$sequence$random"
fi 

#The number of amino acids in the chain
echo "Protein length: ${#sequence} amino acids"
echo "Memorize this sequence..."
sleep 2
clear

#Adds ONE amino acid to the chain each round (until the final round)
for ((i=0; i<${#sequence}; i++))
do
    echo "${sequence:$i:1}"
    sleep 1
    clear
done

#All the dialogue for your responses! 
echo "Type the amino acid sequence"
read answer

if [ "$answer" = "$sequence" ]
then
    echo "Correct! Keep building!"
    sleep 2
    clear
    round=$((round + 1))
else
    echo "Incorrect! Protein synthesis terminated :( Try again!"
    exit
fi

if [ ${#sequence} -eq 5 ]
then
    echo "Correct! Synthesizing final protein..."
    sleep 2
    clear
else
    echo "Correct! Keep building!"
    sleep 2
    clear
fi
done
echo "Protein synthesized! Good job :)"
echo "Final amino acid sequence: $sequence"
