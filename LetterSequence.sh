#!/bin/bash

echo "Welcome to DNA Letter Sequence!"
echo
echo "The computer will show you a DNA sequence one letter at a time."
echo "Each round, the sequence gets one letter longer."
echo "Your job is to type the full sequence back correctly."
echo
echo "DNA letters:"
echo "A = Adenine"
echo "T = Thymine"
echo "C = Cytosine"
echo "G = Guanine"
echo
echo "You need to correctly repeat 5 DNA letters to win."
echo "Type your answer with no spaces, like ATCG."
echo
read -p "Press Enter to start..."

# These are the possible DNA letters the computer can randomly choose.
letters=("A" "T" "C" "G")

# This variable stores the full DNA sequence as the game continues.
sequence=""

# The assignment says the player must get to at least 3 letters before winning.
# I chose 5 letters because it is challenging but still reasonable.
win_length=5

# This keeps track of what round the player is on.
round=1

while true
do
    # I used blank lines instead of clear so this works better in GitHub.dev/Codespaces.
    printf "\n\n\n"
    echo "Round $round"
    echo "Watch carefully..."
    sleep 1
    printf "\n\n\n"

    # Pick one random DNA letter from the letters array.
    random_index=$((RANDOM % 4))
    new_letter="${letters[$random_index]}"

    # Add the new DNA letter to the end of the sequence.
    sequence="${sequence}${new_letter}"

    # Show the sequence one DNA letter at a time.
    for (( i=0; i<${#sequence}; i++ ))
    do
        current_letter="${sequence:$i:1}"

        # This case statement connects each DNA letter to its full base name.
        case "$current_letter" in
            A)
                base_name="Adenine"
                ;;
            T)
                base_name="Thymine"
                ;;
            C)
                base_name="Cytosine"
                ;;
            G)
                base_name="Guanine"
                ;;
        esac

        echo "DNA Letter: $current_letter"
        echo "Base Name: $base_name"
        sleep 1
        printf "\n\n"
        sleep 0.4
    done

    echo "Now type the full DNA sequence:"
    read -r guess

    # This removes spaces and changes lowercase letters to uppercase.
  guess_clean="${guess// /}"
guess_clean="${guess_clean^^}"

    # This checks if the user typed something besides A, T, C, or G.
    if [[ ! "$guess_clean" =~ ^[ATCG]+$ ]]
    then
        echo
        echo "That input is not valid for this DNA game."
        echo "Only use the letters A, T, C, and G."
        echo "You typed: $guess_clean"
        echo
        echo "Game over."
        break
    fi

    # This compares the users answer to the computers sequence.
    if [[ "$guess_clean" == "$sequence" ]]
    then
        echo
        echo "Correct!"
        echo "You matched the DNA sequence: $sequence"
        echo "Current sequence length: ${#sequence}"
        sleep 2

        # This checks if the player reached the winning length.
        if [[ ${#sequence} -ge $win_length ]]
        then
            printf "\n\n\n"
            echo "You win!"
            echo "You correctly repeated a DNA sequence of ${#sequence} letters."
            echo "Final DNA sequence: $sequence"
            echo
            echo "Nice job! You compared and matched the full sequence correctly."
            break
        fi

        round=$((round + 1))

    else
        echo
        echo "Incorrect."
        echo "You typed: $guess_clean"
        echo "The correct DNA sequence was: $sequence"
        echo
        echo "Game over."
        break
    fi

done



