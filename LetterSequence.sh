#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
echo "You've entered the DNA sequence game."
echo "Your goal: to memorize a DNA nucleotide sequence given to you one letter at a time (A, T, C,G) until you get five of the same letter in a row."
echo "If you enter the sequence incorrectly, you will be required to start over."
read -p "Press Enter to start..."

# The computer can chose from these letters
letters=("A" "T" "C" "G")

win_length=5
round=1
sequence=""

while true
do
  printf "\n\n\n"
  echo "Round $round"
  echo "Get ready..."
    sleep 1
    printf "\n\n\n"

  # picking random letter
  random_index=$((RANDOM % 4))
  new_letter="${letters[random_index]}"

  # Add the new DNA letter
  sequence="${sequence}${new_letter}"

  for (( i=0; i<${#sequence}; i++ ))
  do
        current_letter="${sequence:$i:1}"
  

  echo "DNA Letter: $current_letter"
        sleep 1
        printf "\n\n"
        
  done
    
   echo "Your turn! Type the sequence and press ENTER:"
    read -r USER_INPUT

# make answer caps
USER_INPUTCORRECTED="${USER_INPUT}^^"


   if [ ! "$USER_INPUTCORRECTED" = "$sequence" ]
   then
        echo "correct! Your sequence alignment is correct."
         echo "Current sequence length: ${#sequence}"
   else echo "Not quite! Try again!"

     if [[ ${#sequence} -ge $win_length ]]
        then
            printf "\n\n\n"
            echo "You correctly repeated a DNA sequence of ${#sequence} ."
            echo "Final DNA sequence: $sequence"
            echo "You're a master scientist!"
            break
        fi

done
        
