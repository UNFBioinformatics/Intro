#!/bin/bash

# This script is a DNA letter sequence memory game.
# The computer adds one random DNA letter each round.
# The player must type the full sequence correctly to continue.

echo "Welcome to the DNA Letter Sequence Game!"
echo
echo "The computer will show you a DNA sequence."
echo "Each round, the sequence gets one letter longer."
echo "Type the full sequence back correctly to continue."
echo

# These are the four DNA letters the computer can choose from.
letters=("A" "T" "C" "G")

# This variable stores the DNA sequence.
sequence=""

# This variable keeps track of the round number.
round=1

# The player wins after correctly repeating 5 letters.
win_length=5

while true
do
    # Pick a random number from 0 to 3.
    random_index=$((RANDOM % 4))

    # Use the random number to pick a DNA letter.
    new_letter=${letters[$random_index]}

    # Add the new letter to the sequence.
    sequence="${sequence}${new_letter}"

    echo "Round $round"
    echo "Remember this sequence:"
    echo "$sequence"
    echo

    # Ask the player to type the sequence.
    read -p "Type the sequence: " answer

    # Make the answer uppercase in case the player types lowercase letters.
    answer=$(echo "$answer" | tr '[:lower:]' '[:upper:]')

    # Check if the answer matches the sequence.
    if [ "$answer" = "$sequence" ]; then
        echo "Correct!"
        echo

        # If the sequence is 5 letters long, the player wins.
        if [ ${#sequence} -eq $win_length ]; then
            echo "You won! You repeated $win_length DNA letters correctly."
            break
        fi

        # Move to the next round.
        round=$((round + 1))
    else
        echo "Incorrect."
        echo "The correct sequence was: $sequence"
        echo "Game over."
        break
    fi
done