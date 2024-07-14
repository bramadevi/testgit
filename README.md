all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "\n**Date and Time:** $$(date)" >> README.md
	@echo "\n**Number of lines in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
