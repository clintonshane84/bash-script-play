#!/bin/bash
# Example and play bash script used to demonstrate how to write bash scripts

if [ "$#" -ge 3 ]; then
	echo "Script name: " $0
	echo -e "\n"
	echo "Argument 1: " $1
	echo "Argument 2: " $2
	echo "Argument 3: " $3
else
	echo "No enough arguments supplied. Expected 3 string arguments to be parsed. \
	Recieved only " $#
fi