#!/bin/bash

# Cootie Catcher / Hich Low Game
# Cootie Catcher / High Low Game 

# The player answers five multiple choice questions. 

# A correct answer earns one point. 

# The player wins by getting at least 4 questions correct. 

score=0 

echo "COOTIE CATCHER GAME" 

echo "Answer the five questions below." 

echo "You need 4 out of 5 correct to win!"  

# Question 1 

echo "1. Which animal has stripes?" 

echo "A. Zebra" 

echo "B. Lion" 

echo "C. Penguin" 

echo "D. Giraffe" 

read -p "Enter your answer: " answer 

if [ "$answer" = "A" ] || [ "$answer" = "a" ]; then 

    echo "Correct!" 

    ((score++)) 

else 

    echo "Incorrect! The correct answer is Zebra." 

fi 

echo "" 

# Question 2 

echo "2. Which is a primary color?" 

echo "A. Purple" 

echo "B. Green" 

echo "C. Blue" 

echo "D. Silver" 

read -p "Enter your answer: " answer 

if [ "$answer" = "C" ] || [ "$answer" = "c" ]; then 

    echo "Correct!" 

    ((score++)) 

else 

    echo "Incorrect! The correct answer is Blue." 

fi 

echo ""  

# Question 3 

echo "3. What is the chemical symbol for Gold?" 

echo "A. Au" 

echo "B. Ga" 

echo "C. Ag" 

echo "D. O" 

read -p "Enter your answer: " answer 

if [ "$answer" = "A" ] || [ "$answer" = "a" ]; then 

    echo "Correct!" 

    ((score++)) 

else 

    echo "Incorrect! The correct answer is Au." 

fi 

echo "" 

# Question 4 

echo "4. What year was the Declaration of Independence signed?" 

echo "A. 1942" 

echo "B. 1776" 

echo "C. 2024" 

echo "D. 99 BC" 

read -p "Enter your answer: " answer 

if [ "$answer" = "B" ] || [ "$answer" = "b" ]; then 

    echo "Correct!" 

    ((score++)) 

else 

    echo "Incorrect! The correct answer is 1776." 

fi 

echo "" 

# Question 5 

echo "5. Which state is NOT landlocked?" 

echo "A. Ohio" 

echo "B. Florida" 

echo "C. Illinois" 

echo "D. Utah" 

read -p "Enter your answer: " answer 

if [ "$answer" = "B" ] || [ "$answer" = "b" ]; then 

    echo "Correct!" 

    ((score++)) 

else 

    echo "Incorrect! The correct answer is Florida." 

fi  

echo "" 

# Display the final score and determine the win or lose condition. 

echo "           FINAL SCORE" 

echo "You got $score out of 5 correct." 

  

if [ "$score" -ge 4 ]; then 

    echo "YOU WIN! " 

    echo "The Cootie Catcher predicts good luck! 😊 " 

else 

    echo "YOU LOSE!" 

    echo "The Cootie Catcher predicts bad luck 🙁 " 

fi 

done 