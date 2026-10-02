#!/bin/bash

# Start the loop counter at zero.
i=0

# Give hand a starting value other than 6 so the loop can begin.
hand=0

# Repeat while hand is not equal to 6.
while [ "$hand" -ne 6 ]; do

    # Generate a random integer from 1 through 10.
    hand=$(( (RANDOM % 10) + 1 ))

    # Increase the loop counter by one.
    ((i++))

    # Check whether the loop has reached its tenth iteration.
    if [ "$i" -eq 10 ]; then

        # Force hand to equal 6 so the loop will stop.
        hand=6

    # End the conditional statement.
    fi

    # Display the iteration number and the current value of hand.
    echo "Run $i: $hand"

    # Pause for 0.1 seconds instead of the original 5 seconds.
    sleep 0.1

# End this iteration and check the while condition again.
done