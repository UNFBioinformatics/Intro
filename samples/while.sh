#!/bin/bash
#save number of lines into variable n
n=$1
#line counter starts at 1
i=1
# read file line by line
while read -r line  

do  
# check if less than or equal to stated value
    if [ $i -le $n ]
    then
    #print line on screen
        echo $line
        #pause 1 unit of time
        sleep 1
        #add 1 to counter
        ((i++))
    else 
    #stop loop wgne limit is reached
        break 
    fi
done

#print message after loop
echo "this script was made by Arthur Moody"