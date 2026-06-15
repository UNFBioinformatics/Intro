#!/bin/bash

i=1

while read -r line  

do  
    if [ $i -lt 10 ]
    then
        echo $line
        sleep 1
        ((i++))
    else 
        break 
    fi
done

#More instructions after the loop 