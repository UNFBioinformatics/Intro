#!/bin/bash
printf "What animal do you want to hear the sound of?"

read animal
if [ $animal == 'cat' ]
then
    echo MEOW
elif [ $animal == 'dog' ]
then
    echo WOOF
elif [ $animal == 'cow' ]
then
    echo MOO
elif [ $animal == 'horse' ]
then
    echo NEIGH
elif [ $animal == 'owl' ]
then
    echo HOOT HOOT
elif [ $animal == 'pig' ]
then
    echo OINK
elif [ $animal == 'jaguar' ]
then
    echo Duuuval
elif [ $animal == 'zebra' ]
then
    echo NEIGHzzzz
elif [ $animal == 'polar bear' ]
then
    echo ROAR
elif [ $animal == 'coelacanth' ]
then
    echo SEE-YA-LATER
else
    echo That animal does not have an epic sound. Try Again. 
fi
printf "Do you want to hear another animal sound? (y/n)"
read input
if [ $input == 'y' ]
then
    bash EpicAnimals.sh
fi
if [ $input == 'n' ]
then
    echo "Thanks for playing!"
fi