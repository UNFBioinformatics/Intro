#!/bin/bash

i=0

while true  

do  
        hand=$(( (RANDOM % 10) +1 ))
        echo $hand
        sleep 5
        # breaks loop at recognition of a 6
        if  [ $hand -eq 6 ] 
             then break
        fi
        #breaks loop if run over 10 times
         let i=i+1
         if [ $i -eq 10 ]
             then break
        fi
done


#I want to show you a comment 