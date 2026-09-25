#!/bin/bash
# start loop
i=0
# initialize hand variable
hand=0
# continue looping until hand is 6
while [ $hand -ne 6 ]
# start loop
do
# generate random number 1-6
hand=$(( (RANDOM % 6) + 1 ))
# print generated number
echo $hand
# increase counter by one
((i++))
# check loop run 10 times
if [ $i -eq 10 ]
# begin conditional statement
then
# force exit condition to be 6
hand=6
# end conditional statement
fi
# reduce delay to make loop faster
sleep 0.1
# end the loop
done
