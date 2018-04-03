function guessinggame {
	local guess=0
	local nooffiles=$(ls -1q | wc -l)

	while [[ $guess -ne $nooffiles ]]
	do
		echo "Guess the number of files: "
		read guess
		if [[ $guess -gt $nooffiles ]]
		then
			echo "Your guess is too high! Go lower!"
		elif [[ $guess -lt $nooffiles ]]
		then
			echo "Your guess is too low! Go higher!"
		fi
	done
	
	echo "Excellent guess! Congratulations! The number of files is indeed $nooffiles!"
}

guessinggame
