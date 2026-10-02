#!/bin/bash

# Store the first command-line argument as the requested number of lines.
n=$1

# Start the printed-line counter at zero.
i=0

# Read each input line, including a final line without a newline character.
while IFS= read -r line || [ -n "$line" ]; do

    # Check whether fewer than the requested number of lines have been printed.
    if [ "$i" -lt "$n" ]; then

        # Print the current line followed by a newline.
        printf '%s\n' "$line"

        # Increase the printed-line counter by one.
        ((i++))

    # Handle the case where the requested number has already been printed.
    else

        # Exit the loop.
        break

    # End the conditional statement.
    fi

# End this iteration of the reading loop.
done

# Tell the user who made this script.
echo "This script was made by Brooke McNeil."
