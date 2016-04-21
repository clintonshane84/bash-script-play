#!/bin/bash
# Bash example which has the objective to show if conditionals for strings
echo -e "Pick a color by entering either of the following letters below: R, Y, G:"
read
if [ "$REPLY" == "R" ]; then
	echo -e "Stop and do not go"
elif [ "$REPLY" == "Y" ]; then
	echo -e "Slow down and get ready to stop"
elif [ "$REPLY" == "G" ]; then
	echo -e "Go go go"
else
	echo -e "Invalid input."
	exit 1
fi
exit 0