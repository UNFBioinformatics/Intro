#!/bin/bash
# begin line counter 
i=1
# read each line from input file
while read -r line
# start loop
do
# check current line number is less or equal to requested number
if [ $i -le $1 ]
# begin conditional statement
then
# print current line
echo "$line"
# pause before printing next line
sleep 1
# increase line counter by 1
((i++))
# if request lines reached then stop
else
# stop the loop
break
# end conditional statement
fi
# end the loop
done
# tell who made script 
echo "This script was made by Olivia Hagedoorn."
