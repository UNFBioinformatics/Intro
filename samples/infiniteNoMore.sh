#!/bin/bash

# Initialize the loop counter.
i=0

# Initialize the hand variable.
hand=0

# Continue looping until hand equals 6.
while [ $hand -ne 6 ]

# Start the loop.
do
    # Generate a random number between 1 and 10.
    hand=$(( (RANDOM % 10) + 1 ))

    # Print the generated number.
    echo $hand

    # Increase the loop counter by one.
    ((i++))

    # Check whether the loop has run 10 times.
    if [ $i -eq 10 ]

    # Begin the conditional statement.
    then
        # Force the exit condition to 6.
        hand=6

    # End the conditional statement.
    fi

    # Reduce the delay to make the loop run faster.
    sleep 0.1

# End the loop.
done
