```bash
#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
# ==============================================================================
# Script Name: LetterSequence.sh
# Author: Krush Patel
# Course: UNF Bioinformatics
# ==============================================================================

BASES=("A" "T" "C" "G")
SEQUENCE=""
TARGET_WIN_STREAK=6
CURRENT_ROUND=1
GAME_WON=true

# NOTE ON CASE-SENSITIVITY: 
# BASH string comparisons are case-sensitive. To prevent case issues, 
# this script converts the user's input to uppercase using '${USER_INPUT^^}'.
# That means if the correct answer is ATCG and the user types atcg, it still counts.

clear
echo "===================================================="
echo "      WELCOME TO THE DNA SEQUENCE MEMORY GAME       "
echo "===================================================="
echo "Match a sequence of $TARGET_WIN_STREAK bases to declare evolutionary victory!"
echo "Press ENTER to start..."
read -r

# I chose a while loop because the game needs to continue round by round
# until the player either reaches the winning streak or makes a mistake.
while [ $CURRENT_ROUND -le $TARGET_WIN_STREAK ]; do
    
    RANDOM_INDEX=$(( RANDOM % 4 ))
    SEQUENCE="${SEQUENCE}${BASES[$RANDOM_INDEX]}"
    
    echo "----------------------------------------------------"
    echo "Round $CURRENT_ROUND: Prepare your mind..."
    sleep 1.5
    clear

    # I used a for loop here because each character in the sequence
    # needs to be shown one at a time before the player answers.
    for (( i=0; i<${#SEQUENCE}; i++ )); do
        CHARACTER="${SEQUENCE:$i:1}"
        echo -e "\n\n\t\t\t [ $CHARACTER ] \n\n"
        sleep 1.0
        clear
        sleep 0.2
    done

    # This is where the player types the sequence they remember.
    echo "Your turn! Type the sequence and press ENTER:"
    read -r USER_INPUT

    # Convert the player's input to uppercase.
    USER_INPUT_UPPER="${USER_INPUT^^}"

    # This if statement compares the player's answer to the correct sequence.
    # The = comparator checks whether the two letter sequences match.
    if [ "$USER_INPUT_UPPER" = "$SEQUENCE" ]; then
        echo -e "\nCORRECT! Your sequence alignment is flawless."
        CURRENT_ROUND=$(( CURRENT_ROUND + 1 ))
        sleep 1.5
        clear
    else
        echo -e "\nGAME OVER! Mutation detected."
        echo "The correct sequence was: $SEQUENCE"
        echo "You made it to Round $CURRENT_ROUND."
        GAME_WON=false
        break
    fi
done

# This final if statement checks whether the player won the game.
if [ "$GAME_WON" = true ]; then
    echo "===================================================="
    echo "CONGRATULATIONS! You achieved a streak of $TARGET_WIN_STREAK!"
    echo "You are a Master Bioinformatician."
    echo "===================================================="
fi
```
