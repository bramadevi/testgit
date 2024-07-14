#!/bin/bash

function guess_files {
    local file_count=$(ls -1 | wc -l)
    while true; do
        echo "Guess the number of files in the current directory:"
        read guess
        if [[ $guess -eq $file_count ]]; then
            echo "Congratulations! You guessed the correct number of files."
            break
        elif [[ $guess -lt $file_count ]]; then
            echo "Your guess is too low. Try again."
        else
            echo "Your guess is too high. Try again."
        fi
    done
}

guess_files
