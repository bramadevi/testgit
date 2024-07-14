# Makefile for the Guessing Game Project

# The default target, executed when `make` is run without arguments
all: README.md

# Rule to create README.md
README.md: guessinggame.sh
    @echo "# Guessing Game" > README.md
    @echo "\n**Date and Time:** $$(date)" >> README.md
    @echo "\n**Number of lines in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

# Rule to clean up generated files
clean:
    rm -f README.md
