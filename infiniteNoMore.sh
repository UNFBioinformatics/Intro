#!/bin/bash

# Making the variable i to start at 0
i=0

# Making a new variable called generate to start at 0
generate=0

# When a number not equal to 6 shows up, the statement is true..
while [ $generate -ne 6 ]
# When the statement is true, we want to generate a random number from 1 to 6. 
do
    generate=$((RANDOM % 6 + 1))

    # Once the number is echoed, we want to generate the next number by adding 1 to i. 
    ((i++))

    # If I is equal to 10, then we have generated 10 numbers and we want to stop the loop. 
    if [ $i -eq 10 ]
    # To stop the loop, we want to make the number generator generate a 6. 
    then
        # Force generate to 6
        generate=6
    # Close the if/then loop. 
    fi
    
 # Once a random number was generated, we want to echo that number which is defined as the generate variable. 
    echo $generate

# Make the numbers generate faster by waiting for 0.5 unit of time instead of 1. 
sleep 0.5
# End the code. 
done