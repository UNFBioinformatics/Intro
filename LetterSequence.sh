#!/bin/bash
# ==============================================================================
# SCRIPT NAME: LetterSequence.sh
# AUTHOR: Biological Sequence Memory Game
# DESCRIPTION: A DNA sequence memory game using A, T, C, G bases.
# ==============================================================================

# ------------------------------------------------------------------------------
# LOGIC EXPLANATION (5pt Requirement):
# 1. WHILE LOOP: Chosen because the game length is dynamic—it needs to run continuously
#    until the player either reaches the target winning length or makes a mistake.
# 2. FOR LOOP: Used to iterate through the target string character by character so each
#    base flashes on screen individually with timed pauses (`sleep`).
# 3. IF/THEN/ELSE: Evaluates user input against the generated sequence to check for victory 
#    or game over.
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# CASE-SENSITIVITY COMMENT (5pt Requirement):
# Q: What happens if the user gets the letter correct, but not the case?
# A: In Bash, standard string comparison (`==`) is strict and case-sensitive. Without 
#    handling, 'atcg' would fail against 'ATCG'. To solve this, we convert user input 
#    to UPPERCASE using `tr '[:lower:]' '[:upper:]'` before running the comparison.
# ------------------------------------------------------------------------------

set -euo pipefail

bases=("A" "T" "C" "G")
target_length=5         # Must be at least 3 to win
sequence=""
score=0

clear
printf "========================================\n"
printf "       DNA SEQUENCE MEMORY GAME        \n"
printf "========================================\n"
printf "Memorize the sequence of DNA bases (A, T, C, G).\n"
printf "Reach a sequence length of %d to win!\n" "$target_length"
read -r -p "Press [Enter] to begin..." _

while [ ${#sequence} -lt $target_length ]; do
    # 1. Add a new random base to the sequence each round
    random_index=$(( RANDOM % ${#bases[@]} ))
    sequence+="${bases[$random_index]}"
    
    current_round=$(( score + 1 ))
    
    clear
    echo "--- Round $current_round ---"
    echo "Memorize the sequence below..."
    sleep 1.5

    # 2. Flash each letter individually using sleep & clear
    for (( i=0; i<${#sequence}; i++ )); do
        clear
        echo -e "\n\n\t\t [ ${sequence:$i:1} ] \n\n"
        sleep 0.8
        clear
        sleep 0.2
    done

    # 3. Prompt user for input
    clear
    echo "--- Round $current_round ---"
    echo -e "Enter the sequence (%d bases): " "$target_length"
    read -r guess

    # Convert guess to uppercase for case-insensitivity
    guess_upper=$(printf "%s" "$guess" | tr '[:lower:]' '[:upper:]')
    sequence_upper=$(printf "%s" "$sequence" | tr '[:lower:]' '[:upper:]')

    # 4. Check user input against target sequence
    if [[ "$guess_upper" == "$sequence_upper" ]]; then
        score=$(( score + 1 ))
        echo -e "✅ Correct! Moving to next round..."
        sleep 1.5
    else
        echo -e "❌ Incorrect sequence! Game Over."
        echo "The correct sequence was: $sequence"
        echo "Your input was: $guess"
        exit 0
    fi
done

# 5. Victory Screen
clear
echo "========================================"
echo "🎉 CONGRATULATIONS! YOU WON! 🎉"
echo -e "You successfully memorized a %d-base DNA sequence: %s" "$target_length" "$sequence"
echo "========================================"