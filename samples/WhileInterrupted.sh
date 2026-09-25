#!/bin/bash

#define the number of lines 
num_lines=$1
#define the i variable to start printing numbers starting at 1
i=1

#while there is a line to read
while read -r line  

#while there is a line to read, see if i is less than 10 and if it is, then echo the line contents, sleep for 1, and add 1 to the value of i 
do  
    if [ $i -lt $num_lines ]    
        then
        echo $line
        sleep 1
        ((i++))
#if there is not a line to read, stop echoing the lines (stop the script)
    else 
        break 
#the if/then loop stops
    fi
#end the loop
done

#More instructions after the loop 
sleep 1 
echo "Jess made this script"