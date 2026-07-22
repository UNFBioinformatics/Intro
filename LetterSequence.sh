#!/bin/bash
#define variables 
CHOICE1=A
CHOICE2=T 
CHOICE3=C
CHOICE4=G
#assigns bases as choices within the game loop array. 
echo "Welcome to the Universal Codon Transfer Interface"
echo "Please repeat the next base in the codon after it clears from the terminal."
echo "These codons will be given to geneticists on Earth to study, but our computers are not strong enough"
echo "Thats why you must relay the data to the next ship, as it is seen on the terminal." 
sleep 5 
clear
#adds a cool little background and also shows that on screen as an intro 
sleep 1s 
while true; do 
#   game loop start
    RNG_NUM=$(( (RANDOM % 4) + 1 ))
    #generates a random number from an array of numnbers to 3000 but it only chooses 4 
    VAR_NAME="CHOICE$RNG_NUM"
    #this sets up a new variable to add onto the sequence. It is Chosen from the RNG num 
    #and is a dded onto the CHOICE variable. This creates a new base. The value chosen from
    #the RNG array is used as the number for the choice. 
    NEW_VAL="${!VAR_NAME}"
    #tells the script to recognize the number from the RNG added onto the choice 
    #as a new variable. 
    SEQUENCE+=$NEW_VAL
    # will add on the new base to the sequence as an array. 
    echo "Incoming Nucleotides" 
    for item in "${SEQUENCE[@]}" ; do 
        echo " >> $item << " 
        #shows the bases on the screen, which is in the sequence array. 
        sleep 1s
        clear 
        echo "What is the codon structure?"
        sleep 1s 
        #prompts user to enter a value
    done 

#guessing mechanism 40-55
    for guess_value in "${SEQUENCE[@]}" ; do 
    # denotes the value in the SEQUENCE array as guess value.
    read -p "Abrreviated Base:" user_guess 
    # -p prints out abbreviated base. User_Guess is what the variable is called. 
        if [ "$user_guess" != "$guess_value" ] ; then
        #if the user guess is equal to the value entered, it will:
            clear 
            echo "Incorrect!" 
            echo "The Fate of humanity was in your hands!" 
            echo "you blew it!" 
            exit 
        fi
    done 

    if [ "${#SEQUENCE}" -eq 3 ] ; then 
    clear
    echo "Quota Reached. Thank You." 
    exit
    fi 

    sleep 1s
    echo "Correct, sending"
    sleep 1s
    clear

    done
done