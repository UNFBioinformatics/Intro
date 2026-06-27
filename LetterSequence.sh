```bash
#!/bin/bash

# LetterSequence.sh
# Author: Krush Patel
# Course: UNF Bioinformatics
#
# This is my letter sequence game.
# I used DNA letters because biology uses sequences like A, T, C, and G.
# The computer shows letters, then the player has to type the same sequence.

letters=("A" "T" "C" "G")
sequence=""
round=1
win_round=4
lost=false

clear
echo "Welcome to my DNA Letter Sequence game."
echo "The letters are A, T, C, and G."
echo "Watch the letters, then type the full sequence."
echo "You have to pass $win_round rounds to win."
echo "Press ENTER to start."
read

# I used a while loop because the game needs to keep going
# until the player wins or gets the sequence wrong.
while [ $round -le $win_round ]
do
    clear
    echo "Round $round"
    echo "Watch carefully..."
    sleep 2

    # This picks a random spot from the letter list.
    number=$((RANDOM % 4))
    new_letter=${letters[$number]}

    # This adds the new letter to the end of the sequence.
    sequence="${sequence}${new_letter}"

    # I used a for loop so the letters show one at a time.
    for (( i=0; i<${#sequence}; i++ ))
    do
        clear
        echo "Letter:"
        echo "${sequence:$i:1}"
        sleep 1
        clear
        sleep 0.5
    done

    echo "Type the full sequence:"
    read answer

    # Bash checks uppercase and lowercase differently.
    # This changes the answer to uppercase, so atcg still works as ATCG.
    answer=$(echo "$answer" | tr '[:lower:]' '[:upper:]')

    # This if statement compares the player's answer to the real sequence.
    # The = sign checks if both sequences are the same.
    if [ "$answer" = "$sequence" ]
    then
        echo "Correct!"
        round=$((round + 1))
        sleep 1.5
    else
        echo "Wrong answer."
        echo "You typed: $answer"
        echo "The correct sequence was: $sequence"
        lost=true
        break
    fi
done

# This part only runs if the player did not lose.
if [ "$lost" = false ]
then
    clear
    echo "You win!"
    echo "The final sequence was: $sequence"
fi
```
