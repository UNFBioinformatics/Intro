#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
# ==============================================================================
# Script Name: LetterSequence.sh
# Author: Elaina Reynolds
# Course: UNF Bioinformatics
# Description: A biological twist on the classic "Simon Says" memory game using 
#              DNA nucleotides (A, T, C, G).
# ==============================================================================
# INSTRUCTIONS FOR THE PLAYER:
# 1. Watch the screen closely! DNA nucleotides will flash one by one. 
# 2. Once the screen clears, type the entire sequence exactly as you saw it. 
# 3. Match a sequence of 6 nuclerotides to win the game! (Requirement: at least 4).

# --- GAME CONFIGURATION AND iNITIALIZATION---
BASES=("A" "T" "C" "G")
SEQUENCE=""
CURRENT_ROUND=1
GAME_WON=true

# CLEAR QUESTION ANSWER (For Scoring Rubric):
# Q: What happens if the user gets the letter correct, but not the case?
# A: BASH string comparisons are case-sensitive by default. If the sequence is "ATCG" 
#    and the user inputs "atcg", the comparison will fail, resulting in a Game Over. 
#    To prevent frustration, we will automatically convert the user's input to 
#    uppercase using the BASH built-in modifier '${USER_INPUT^^}'.

clear
echo "===================================================="
echo "      WELCOME TO THE DNA SEQUENCE MEMORY GAME       "
echo "===================================================="
echo "Match a sequence of $TARGET_WIN_STREAK bases to declare evolutionary victory!"
echo "Press ENTER to start..."
read -r
