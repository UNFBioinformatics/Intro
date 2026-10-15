#!/bin/bash
#Begin by reading the "Welcome sign" ASCII art here document
while true; do
cat<< 'welcome sign'
 _________________________________
'BASH Game Program           [ x ]'
|---------------------------------|
||            Welcome!           ||
||     Are you ready for your    ||
||    first trivia question?     ||
||    Reply Y or N to continue.  ||
||_______________________________||
'---------------------------------'  
welcome sign
#Read the user's response to the welcome sign, defined as "gamestart"
read gamestart
#if the user responds with Y or y, display the "Rules sign" ASCII art here document. Otherwise, exit the program.
if [[ $gamestart == "Y" || $gamestart == "y" ]]; then
cat << 'rules sign'
 _________________________________
'BASH Game Program           [ x ]'
|---------------------------------|
||            Great!             ||
||    Respond to all questions   ||
||      with A, B, C, or D.      ||
||  Score at least 50% to win.   ||
||_______________________________||
'---------------------------------' 
rules sign
else
    echo "No worries! Come back when you're ready."
    exit 0
fi

#set the initial score to 0
score=0

echo Question 1: Which of the following is a prokaryote?
echo 'A) Human egg cell'
echo 'B) Fungi'
echo 'C) Bacteria'
echo 'D) Archaea'
read answer1
if [[ $answer1 == "C" || $answer1 == "c" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 2: What is the metric unit for mass?
echo 'A) Liter (L)'
echo 'B) Gram (g)'
echo 'C) Feet (ft)'
echo 'D) Pound (lb)'
read answer2
if [[ $answer2 == "B" || $answer2 == "b" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 3: How many liters are in one milliliter?
echo 'A) 0.001 L'
echo 'B) 0.01 L'
echo 'C) 0.1 L'
echo 'D) 10 L'
read answer3
if [[ $answer3 == "A" || $answer3 == "a" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 4: What is the curved surface of a graduated cylinder called?
echo 'A) Smiley face'
echo 'B) Frowny face'
echo 'C) A yo momma joke'
echo 'D) Meniscus'
read answer4
if [[ $answer4 == "D" || $answer4 == "d" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 5: What is the first step of the scientific method?
echo 'A) Observation '
echo 'B) Hypothesis'
echo 'C) Experiment'
echo 'D) Conclusion'
read answer5
if [[ $answer5 == "A" || $answer5 == "a" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 6: What is a control group?
echo 'A) A group that does not receive the experimental treatment'
echo 'B) A group that receives the experimental treatment'
echo 'C) A group that is randomly assigned'
echo 'D) A group that is ignored'
read answer6
if [[ $answer6 == "A" || $answer6 == "a" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 7: How many chromosomes does a human have?
echo 'A) 48'
echo 'B) 46'
echo 'C) 50'
echo 'D) 52'
read answer7
if [[ $answer7 == "B" || $answer7 == "b" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 8: What is a dependent variable?
echo 'A) A variable that is unrelated to the study'
echo 'B) A variable that is manipulated by the researcher'
echo 'C) A variable that is kept constant'
echo 'D)A variable that is measured or observed'
read answer8
if [[ $answer8 == "D" || $answer8 == "d" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 9: What is a hypothesis?
echo 'A) A bet on a football game'
echo 'B) A random guess'
echo 'C) A law'
echo 'D) A prediction based on observations'
read answer9
if [[ $answer9 == "D" || $answer9 == "d" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 10: What is the scientific method?
echo 'A) A way of thinking about problems'
echo 'B) A series of steps used to solve problems'
echo 'C) A type of experiment'
echo 'D) A law'
read answer10
if [[ $answer10 == "B" || $answer10 == "b" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 11: Which cellular organelle is often referred to as the "powerhouse of the cell"?
echo 'A) Nucleus'
echo 'B) Ribosome'
echo 'C) Mitochondria'
echo 'D) Endoplasmic reticulum'
read answer11
if [[ $answer11 == "C" || $answer11 == "c" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 12: In what structure of the chloroplast do the light-dependent reactions occur?
echo 'A) Stroma'
echo 'B) Outer membrane of chloroplast'
echo 'C) Thylakoid'
echo 'D) Intermembrane space'
read answer12
if [[ $answer12 == "C" || $answer12 == "c" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 13: What is the term for variants of the same gene that occupy the same location on homologous chromosomes?
echo 'A) Alleles'
echo 'B) Loci'
echo 'C) Genotypes'
echo 'D) Phenotypes'
read answer13
if [[ $answer13 == "A" || $answer13 == "a" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 14: Which component of the human blood is primarily responsible for defending the body against pathogens?
echo 'A) Platelets'
echo 'B) Plasma'
echo 'C) Erythrocytes'
echo 'D) Leukocytes'
read answer14
if [[ $answer14 == "D" || $answer14 == "d" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 15: What is the term for the observable characteristics of an organism?
echo 'A) Alleles'
echo 'B) Loci'
echo 'C) Genotypes'
echo 'D) Phenotypes'
read answer15
if [[ $answer15 == "D" || $answer15 == "d" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 16: During which phase of mitosis do sister chromatids separate and move toward opposite poles of the cell?
echo 'A) Prophase'
echo 'B) Metaphase'
echo 'C) Anaphase'
echo 'D) Telophase'
read answer16
if [[ $answer16 == "C" || $answer16 == "c" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 17: Which major class of macromolecules contain amino acid monomers?
echo 'A) Proteins'
echo 'B) Carbohydrates'
echo 'C) Lipids'
echo 'D) Nucleic acids'
read answer17
if [[ $answer17 == "A" || $answer17 == "a" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 18: What is the primary function of DNA helicase during DNA replication?
echo 'A) Synthesizing short RNA primers to initiate DNA synthesis'
echo 'B) Unwinding the double helix to create replication forks'
echo 'C) Proofreading and correcting errors in DNA synthesis'
echo 'D) Joining Okazaki fragments'
read answer18
if [[ $answer18 == "B" || $answer18 == "b" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 19: Where does transcription take place in eukaryotes, and what enzyme is primarily responsible for it?
echo 'A) Cytoplasm; Ribosome'
echo 'B) Nucleus; RNA polymerase'
echo 'C) Mitochondria; ATP synthase'
echo 'D) Endoplasmic reticulum; Signal peptidase'
read answer19
if [[ $answer19 == "B" || $answer19 == "b" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 20: During eukaryotic mRNA processing, which of the following regions are removed from the primary transcript before leaving the nucleus?
echo 'A) Exons'
echo 'B) Promoters'
echo 'C) Enhancers'
echo 'D) Introns'
read answer20
if [[ $answer20 == "D" || $answer20 == "d" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 21: Which molecules carries specific amino acids to the ribosome during translation?
echo 'A) Transfer RNA (tRNA)'
echo 'B) Messenger RNA (mRNA)'
echo 'C) Ribosomal RNA (rRNA)'
echo 'D) Small nuclear RNA (snRNA)'
read answer21
if [[ $answer21 == "A" || $answer21 == "a" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 22: Cystic fibrosis is an autosomal recessive genetic disorder caused by a mutation in the gene encoding which protein?
echo 'A) Hemoglobin beta chain'
echo 'B) CFTR'
echo 'C) Phenylalanine hydroxylase'
echo 'D) Insulin'
read answer22
if [[ $answer22 == "B" || $answer22 == "b" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 23: Which of the following represents the correct, broadest level of ecological organization?
echo 'A) Population'
echo 'B) Community'
echo 'C) Biogeographical region'
echo 'D) Biosphere'
read answer23
if [[ $answer23 == "D" || $answer23 == "d" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

echo Question 24: What is the basic unit of life?
echo 'A) DNA'
echo 'B) Genes'
echo 'C) Cells'
echo 'D) 6/7'
read answer24
if [[ $answer24 == "C" || $answer24 == "c" ]]; then
    echo "Correct!"
    score=$((score + 1))
fi

#Check if the score is greater than or equal to 12. If it is, display the "win sign" ASCII art here document. Otherwise, display the "lose sign" ASCII art here document.
if [[ $score -ge 12 ]]; then
    cat << 'win sign'
 _________________________________
'BASH Game Program           [ x ]'
|---------------------------------|
||       Congratulations!        ||
||      You won the game!        ||
||  You really know your stuff.  ||
||_______________________________||
'---------------------------------'  
win sign
#If the score is less than 12, display the "lose sign" ASCII art here document.
else
    cat << 'lose sign'
 _________________________________
'BASH Game Program           [ x ]'
|---------------------------------|
||            Sorry!             ||
||   You didn't win the game.    ||
||    Better luck next time!     ||
||_______________________________||
'---------------------------------'  
lose sign
fi
#Inform the player of their final score regardless of whether they won or lost.
echo "Your final score was: $score"
#Ask the player if they would like to play again. If they respond with Y or y, restart the game. Otherwise, exit the program.
echo "Would you like to play again? (Y/N)"
read playagain
if [[ $playagain == "Y" || $playagain == "y" ]]; then
    continue
else
    echo "Thanks for playing! Goodbye."
    break
fi
done