#tells you this is a bash script
#!/bin/bash
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
