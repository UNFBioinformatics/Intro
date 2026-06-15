#!/bin/bash

if [ $1 = 'cat' ]
then
    echo MEOW
elif [ $1 == 'dog' ]
then
    echo WOOF
elif [ $1 == 'cow' ]
then
    echo MOO
elif [ $1 == 'horse' ]
then
    echo NEIGH
elif [ $1 == 'owl' ]
then
    echo HOOT HOOT
elif [ $1 == 'pig' ]
then
    echo OINK
elif [ $1 == 'coelacanth' ]
then
    echo SEE-YA-LATER
else
    echo That animal does not have an epic sound. Prove me wrong.
fi
