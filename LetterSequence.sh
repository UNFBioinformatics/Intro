#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.

#!/bin/bash
secret="ATC"
echo "Memory test: $secret"
sleep 3
clear
read -p "Type it back: " answer

if [ "$answer" == "$secret" ]; then
    echo "Correct"
else
    echo "Wrong, it was $secret"
fi

echo "Memory test! Memorize these letters: $secret"
sleep 3
clear


secret="ATC"
read -p "Type it back: " answer


if [ "$answer" == "$secret" ]; then
    echo "Correct! You successfully aligned the sequences."
else
    echo "Wrong, the sequence was $secret. You had a mismatch."
fi

#!/bin/bash

secret="ATCG"
answer=""

echo "Challenge: Memorize this sequence!"
echo "Sequence: $secret"
sleep 3
clear

while [ "$answer" != "$secret" ]; do
    read -p "Type the 4-letter sequence: " answer
    
    if [ "$answer" == "$secret" ]; then
        echo "Perfect match!"
    else
        echo "Mismatch! Try again."
    fi
done
