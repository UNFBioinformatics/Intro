#!/bin/bash

# Set the loop counter to zero
i=0

# Generate a random number from 1 through 10
hand=$(( (RANDOM % 10) + 1 ))

# Continue the loop while the random number is not 6
while [ $hand -ne 6 ]
do
    # Generate a random number from 1 through 10
    hand=$(( (RANDOM % 10) + 1 ))

    # Display the random number
    echo $hand

    # Increase the loop counter by one
    i=$((i + 1))

    # Check if the loop has run 10 times
    if [ $i -eq 10 ]
    then
        # Force the random number to 6
        hand=6
    fi
    

done
