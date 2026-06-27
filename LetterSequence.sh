```bash
#!/bin/bash

# LetterSequence.sh
# This is a memory game using DNA letters.
# The computer shows a sequence of letters, then the player repeats it.
# I used A, T, C, and G because those are DNA letters, so this connects to biology.

letters=("A" "T" "C" "G")
sequence=""
round=1
win_length=5

clear
echo "Welcome to Letter Sequence!"
echo "Watch the DNA letters and repeat the full sequence."
echo "Letters can be A, T, C, or G."
echo "Get 5 rounds correct to win."
sleep 4

# I chose a while loop because the game needs to keep going
# until the player wins or makes a mistake.
while [ $round -le $win_length ]
do
    clear
    echo "Round $round"
    echo "Watch carefully..."
    sleep 2

    # RANDOM chooses a random number.
    # % 4 makes the number 0, 1, 2, or 3 so it matches the four DNA letters.
    random_number=$((RANDOM % 4))
    next_letter=${letters[$random_number]}

    # Add the new letter to the sequence.
    sequence="${sequence}${next_letter}"

    # This for loop shows each letter one at a time.
    for (( i=0; i<${#sequence}; i++ ))
    do
        clear
        echo "${sequence:$i:1}"
        sleep 1
        clear
        sleep 0.5
    done

    echo "Type the full sequence:"
    read player_guess

    # This makes lowercase answers uppercase.
    # So if the correct answer is ATC and the user types atc, it still counts.
    player_guess=$(echo "$player_guess" | tr '[:lower:]' '[:upper:]')

    # This if statement compares the player answer to the correct sequence.
    # The = comparator checks if the two letter sequences match.
    if [ "$player_guess" = "$sequence" ]
    then
        echo "Correct!"
        echo "The sequence was: $sequence"
        round=$((round + 1))
        sleep 2
    else
        echo "Game over!"
        echo "You typed: $player_guess"
        echo "The correct sequence was: $sequence"
        exit 0
    fi
done

clear
echo "You win!"
echo "You repeated the full sequence:"
echo "$sequence"
```
