```bash id="1feqj4"
#!/bin/bash

# LetterSequence.sh
# Author: Krush Patel
# Course: UNF Bioinformatics
#
# This script is a memory game using DNA letters.
# The computer builds a sequence using A, T, C, and G.
# The player has to watch the letters and type the sequence back correctly.

dna_letters=("A" "T" "C" "G")
correct_sequence=""
round_number=1
goal_rounds=5
player_won=true

clear
echo "=============================================="
echo "        DNA LETTER SEQUENCE GAME"
echo "=============================================="
echo "You will see DNA bases flash on the screen."
echo "Type the full sequence after it disappears."
echo "The possible letters are A, T, C, and G."
echo "Get through $goal_rounds rounds to win."
echo "Press ENTER when you are ready."
read -r

# I used a while loop because the game has to repeat round after round
# until the player either wins or gets the sequence wrong.
while [ $round_number -le $goal_rounds ]
do
    clear
    echo "Round $round_number"
    echo "Watch the sequence carefully..."
    sleep 2

    # Pick a random DNA letter and add it to the growing sequence.
    random_spot=$((RANDOM % 4))
    new_base=${dna_letters[$random_spot]}
    correct_sequence="${correct_sequence}${new_base}"

    # I used a for loop because I want to show each letter in the sequence
    # one at a time instead of showing the whole answer at once.
    for (( i=0; i<${#correct_sequence}; i++ ))
    do
        clear
        echo ""
        echo "          ${correct_sequence:$i:1}"
        echo ""
        sleep 1
        clear
        sleep 0.4
    done

    echo "Now type the full sequence:"
    read -r player_answer

    # Bash comparisons are case-sensitive.
    # This line changes lowercase input to uppercase, so atcg is treated like ATCG.
    player_answer=$(echo "$player_answer" | tr '[:lower:]' '[:upper:]')

    # This if statement checks the player's answer.
    # The = comparator checks if the player's sequence matches the computer sequence.
    if [ "$player_answer" = "$correct_sequence" ]
    then
        echo "Correct. You matched the sequence."
        sleep 1.5
        round_number=$((round_number + 1))
    else
        echo "Incorrect sequence."
        echo "You typed: $player_answer"
        echo "The correct sequence was: $correct_sequence"
        player_won=false
        break
    fi
done

# This final if statement prints the win message only if the player did not lose.
if [ "$player_won" = true ]
then
    clear
    echo "=============================================="
    echo "You win!"
    echo "Final DNA sequence: $correct_sequence"
    echo "You remembered $goal_rounds rounds correctly."
    echo "=============================================="
fi
