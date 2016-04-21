#!/bin/bash
# Example bash script which has the objective to check and report
# if a file exist using the filename from the command line argument
if [ $# -ge 1 ]; then
	file1=$1
else
	echo -e "Error no arguments given. Expected an argument for the filename."
	exit 1
fi

if [ -f $file1 ]; then
	echo -e "The file exists: " $file1
	if [ -r $file1 ]; then
		echo -e "The file is readable"
		cat $file1
	fi
else
	echo -e "The file does not exist: " $file1
fi