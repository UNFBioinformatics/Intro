#!/bin/bash

# Set the line counter to 1
i=1

# Continue reading each line from the input file
while read -r line
do
    # Check if the requested number of lines has not been reached
    if [ $i -le $1 ]
    then
        # Print the current line
        echo "$line"

        # Increase the line counter by one
        ((i++))
    else
        # Stop the loop when the requested number of lines has been printed
        break
    fi
done

# Print a message identifying the creator of this script
echo "This script was created by Elizabeth Espinosa Gamez."