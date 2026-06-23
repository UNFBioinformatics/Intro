#!/bin/bash

#This is where you will write your LetterSequence.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.

echo "Do you know the rules (Type y/n)"
read KnowRules
if [ "$KnowRules"= "y" ];
then 
echo "We can proceed"
else 
echo "The rules are as follows: A list of letters (A, T, C, G) will be given to you one by one. After the list has been given for the round,
you will be promted to repeat/type the letters in order. If you do not type the correct letter, you will be sent back to level one. There are 12 levels in total
and a 5 second timer for each letter"

fi


end  
