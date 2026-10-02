#!/bin/bash

#This is where you will write your CootieCatcher.sh script.

#Make sure to record your thoughts and instructions in your OWN words in the comments 
#and to use the comments to show that you can explain your code.
#displays the following message that is in quotes
echo "Welcome to the bioinformatics game where you will determine your protein's fate!"
#pauses for 1 unit of time 
sleep 1
#displays the following message that is in quotes
echo "To begin, first choose which protein you want to build! Make sure you type the choices exactly as written. "
#pauses for 0.5 unit of time 
sleep 2
#displays the protein choices pausing for 0.2 unit of time in between each choice 
echo "Enzyme"
sleep 0.2
echo "Ion Channel"
sleep 0.2 
echo "Receptor"
sleep 0.2
echo "Antibody"
#the script will make sure to take into account the answer for the next step and defines the variable as protein
read protein
#in case one of the choices in the if then statement is not selected, the while loop will give them another chance to select the right answer. 
#while the choices are not either Enzyme, Ion Channel, Receptor, or Antibody, echo instructions to be able to select a protein again. 
while [ "$protein" != "Enzyme" ] && [ "$protein" != "Ion Channel" ] && [ "$protein" != "Receptor" ] && [ "$protein" != "Antibody" ]
do

    echo "Please type one of the choices exactly as written. Your choices are:"
    echo "Enzyme"
    echo "Ion Channel"
    echo "Receptor"
    echo "Antibody"

    read protein

done
#select the protein types and echo the response for whatever you choose. If none of those are selected, the while loop will redirect to those choices. 
if [ "$protein" = "Enzyme" ]
then 
    echo "You will build an enzyme."
else
    if [ "$protein" = "Ion Channel" ]
    then 
        echo "You will build an Ion Channel."
    else 
        if [ "$protein" = "Receptor" ]
        then 
            echo "You will build a Receptor."
        else 
            if [ "$protein" = "Antibody" ]
            then 
                echo "You will build an Antibody."
            fi
        fi
    fi
fi 
#the read question1, stores the question 1 answer of which letter was chosen as that variable, the echo displays what is written in the quotes, sleep pauses between what is displayed by the echo
echo "There is a missing nucleotide in the DNA sequence for this protein."
sleep 1

echo "Which nucleotide should DNA polymerase add?"
sleep 1

echo "A"
echo "C"
echo "T"
echo "G"

read question1
if [ "$question1" = "C" ]
then
    echo "Correct"
else
    echo "Incorrect"
fi
#the read question2, stores the question 2 answer of which letter was chosen as that variable, the echo displays what is written in the quotes, sleep pauses between what is displayed by the echo
echo "There is another missing nucleotide in the DNA sequence for this protein."
sleep 1

echo "Which nucleotide should DNA polymerase add?"
sleep 1

echo "A"
echo "C"
echo "T"
echo "G"

read question2
if [ "$question2" = "A" ]
then
    echo "Correct"
else
    echo "Incorrect"
fi
#the read question3, stores the question 3 answer of which letter was chosen as that variable, the echo displays what is written in the quotes, sleep pauses between what is displayed by the echo
echo "There is a third missing nucleotide in the DNA sequence for this protein."
sleep 1

echo "Which nucleotide should DNA polymerase add?"
sleep 1

echo "A"
echo "C"
echo "T"
echo "G"

read question3
if [ "$question3" = "T" ]
then
    echo "Correct"
else
    echo "Incorrect"
fi
#This is going to tell you whether you win or lose. If the 3 nucleotides in a row entered spell CAT, then it will say you win, if anything else, you will lose. 
if [ "$question1" = "C" ]
then
    if [ "$question2" = "A" ]
    then
        if [ "$question3" = "T" ]
        then
            echo "Congratulations!"
            echo "You correctly restored the DNA sequence: CAT"
            echo "YOU WIN!"
        else
            echo "The DNA sequence was incorrect."
            echo "YOU LOSE!"
            echo "Hint: Lack the ability to taste anything sweet."
        fi
    else
        echo "The DNA sequence was incorrect."
        echo "YOU LOSE!"
        echo "Hint: Lack the ability to taste anything sweet."
    fi
else
    echo "The DNA sequence was incorrect."
    echo "YOU LOSE!"
    echo "Hint: Lack the ability to taste anything sweet."
fi