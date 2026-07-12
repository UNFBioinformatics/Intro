#!/bin/bash

# LetterSequence.sh
# This is a memory game that uses the DNA letters A, T, C, and G.
# The player watches a sequence and then types the full sequence back.

# Expected input:
# The user should type uppercase DNA letters, such as A, AT, or ATCG.
#
# Expected output:
# If the input matches the sequence, the game says the answer is correct
# and moves to the next round. If it does not match, the game ends.

letters=("A" "T" "C" "G")
sequence=""
round=1
win_length=5

echo "Welcome to my DNA Letter Sequence game!"
echo "Watch the letters carefully and repeat the complete sequence."
echo "You must correctly repeat $win_length letters to win."
sleep 4
clear

# I chose a while loop because the game needs to repeat rounds.
# The loop continues until the player wins or enters a wrong answer.
while [ "$round" -le "$win_length" ]
do
    # This chooses one random letter from the letters array.
    random_letter=${letters[$RANDOM % ${#letters[@]}]}

    # This adds the new letter to the end of the existing sequence.
    sequence="${sequence}${random_letter}"

    echo "Round $round"
    echo "Get ready..."
    sleep 2
    clear

    # I chose a for loop because each letter needs to be shown
    # one at a time before the screen is cleared.
    for ((i=0; i<${#sequence}; i++))
    do
        echo "${sequence:$i:1}"
        sleep 1
        clear
    done

    echo "Type the complete sequence:"
    read -r player_input

    # The = comparator checks whether the two strings are exactly equal.
    # This comparison is case-sensitive.
    # If the correct answer is ATG but the user types atg,
    # Bash treats the answers as different and marks it incorrect.
    if [ "$player_input" = "$sequence" ]
    then
        echo "Correct! Nice job."
        sleep 2
        clear
        round=$((round + 1))
    else
        echo "That answer was incorrect."
        echo "You entered: $player_input"
        echo "The correct sequence was: $sequence"
        echo "Game over!"
        exit 1
    fi
done

echo "Congratulations!"
echo "You correctly repeated a sequence of $win_length DNA letters."
echo "You win!"