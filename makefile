all: README.md update

README.md:
	touch README.md
	echo "The Guessing Game" > README.md

update:
	echo "Date and time last make run: $$(date)" >> README.md
	echo "Number of lines in guseeinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md
