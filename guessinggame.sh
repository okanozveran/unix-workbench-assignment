#!/usr/bin/env bash

number_of_files=$(find * -maxdepth 0 -type f | wc -l)

echo "Try to guess how many files are in current directory?"

function check_answer {
    if [[ $1 -gt $number_of_files ]]
    then
        echo "That's too much. Please, try one more time..."
    elif [[ $1 -lt $number_of_files ]]
    then
        echo "Hey, we have more files in the current directory. Let's try again..."
    else
        echo "Bravissimo! You've guessed the right number of files! Congratulations!!!"
    fi
}

while [[ ! $user_guess -eq $number_of_files ]] 
do
    read user_guess
    
    check_answer $user_guess
done
