#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.

letters=("A" "T" "G" "C")
round=1

echo "Welcome to Letter Sequence!"
sleep 2
echo "Each round is a new random sequence"
sleep 2
echo "Try your best!"
sleep 3
clear

while [ $round -le 3 ]
do
    echo "Round $round"
    echo

    # decide how long the sequence is
    if [ $round -eq 1 ]
    then
        length=3
    elif [ $round -eq 2 ]
    then
        length=5
    else
        length=10
    fi


    sequence=""

    i=0
    while [ $i -lt $length ]
    do
        random=${letters[$RANDOM % 4]}
        sequence="$sequence$random"
        i=$((i+1))
    done

    echo "$sequence"
    sleep 3
    clear

    echo "type the sequence:"
    read answer