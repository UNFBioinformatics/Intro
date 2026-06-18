#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.

```bash
#!/bin/bash

# LetterSequence.sh
# This is my letter sequence memory game.
# It is based on the Color Sequence game, but instead of colors, I used food letters.
#
# Food letters:
# P = Pizza
# T = Taco
# B = Burger
# S = Salad
#
# Expected input:
# The user should type the full sequence of letters they saw.
# Example: If the computer shows P, then T, then B, the user should type PTB.
#
# Logic explanation:
# I used a WHILE loop because the game needs to keep repeating until the player
# either wins or gets the answer wrong. Each round adds one new letter to the sequence.
#
# I used a FOR loop because I need the computer to show each letter in the sequence
# one at a time.
#
# I used IF/THEN/ELSE statements because the script has to decide if the user
# typed the correct answer or not.
#
# I also used a CASE statement to match each letter with the food it represents.
#
# Comparator explanation:
# The main comparison is:
# [[ "$guess_clean" == "$sequence" ]]
# This checks if the player's answer is equal to the computer's sequence.
#
# Uppercase/lowercase explanation:
# If the user gets the letters correct but types lowercase, like "ptb" instead
# of "PTB", the script still counts it as correct because I convert the answer
# to uppercase before comparing it.

clear
echo "Welcome to Food Order Letter Sequence!"
echo
echo "This is a memory game."
echo "The computer will show you a growing sequence of food letters."
echo "You have to type the full sequence back correctly."
echo
echo "Food letters:"
echo "P = Pizza"
echo "T = Taco"
echo "B = Burger"
echo "S = Salad"
echo
echo "You need to correctly repeat 5 letters to win."
echo "Type your answer with no spaces, like PTB."
echo
read -p "Press Enter to start..."

# These are the possible letters the computer can choose.
letters=("P" "T" "B" "S")

# This stores the full sequence as the game continues.
sequence=""

# The assignment says the player must reach at least 3 letters before winning.
# I chose 5 letters because it is challenging but not too long.
win_length=5

# This keeps track of the round number.
round=1

while true
do
    clear
    echo "Round $round"
    echo "Watch carefully..."
    sleep 1
    clear

    # Pick one random letter from the list.
    random_index=$((RANDOM % 4))
    new_letter="${letters[$random_index]}"

    # Add the new random letter to the end of the sequence.
    sequence="${sequence}${new_letter}"

    # Show the whole sequence one letter at a time.
    for (( i=0; i<${#sequence}; i++ ))
    do
        current_letter="${sequence:$i:1}"

        # This case statement connects each letter to a food.
        case "$current_letter" in
            P)
                food_name="Pizza"
                ;;
            T)
                food_name="Taco"
                ;;
            B)
                food_name="Burger"
                ;;
            S)
                food_name="Salad"
                ;;
        esac

        echo "Letter: $current_letter"
        echo "Food: $food_name"
        sleep 1
        clear
        sleep 0.4
    done

    echo "Now type the full sequence:"
    read -r guess

    # Remove spaces and convert lowercase letters to uppercase.
    guess_clean=$(echo "$guess" | tr -d '[:space:]' | tr '[:lower:]' '[:upper:]')

    # Compare the player's answer to the computer's sequence.
    if [[ "$guess_clean" == "$sequence" ]]
    then
        echo
        echo "Correct!"
        echo "You matched the sequence: $sequence"
        echo "Current sequence length: ${#sequence}"
        sleep 2

        # Check if the user reached the winning length.
        if [[ ${#sequence} -ge $win_length ]]
        then
            clear
            echo "You win!"
            echo "You correctly repeated a sequence of ${#sequence} letters."
            echo "Final sequence: $sequence"
            echo
            echo "Nice job! You remembered the whole food order."
            break
        fi

        round=$((round + 1))

    else
        echo
        echo "Incorrect."
        echo "You typed: $guess_clean"
        echo "The correct sequence was: $sequence"
        echo
        echo "Game over."
        break
    fi
done
```
