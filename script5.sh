#!/bin/bash
# Bash example which has the objective to test and fully illustrate
# the file conditionals in the use of the if control statement

# Setup up some variables
far="-"
faw="-"
fax="-"
fag="-"
fau="-"

# User is expected to give a filename as an argument

# Check total arguments given is 1 and that the argument is a non-zero length
# String
if [ $# -eq 1 -a -n $1 ]; then
	
	# Check if the file exists and that the file is non-zero in size
	# -e check if file exists and -s checks if file is non-zero size
	if [ -e $1 -a -s $1 ]; then
		
		# Report the file is a directory
		if [ -d $1 ]; then
			echo -e "The file is a directory"
		# Report the file is a regular file
		elif [ -f $1 ]; then
			echo -e "The file is a regular file"
		# Report the file is a symbolic link
		else
			echo -e "The file is not a regular file or directory so therefore \
it maybe a symoblic link"
		fi
		
		# Get and report the file attributes
		if [ -r $1 ]; then far="r"; fi
		if [ -w $1 ]; then faw="w"; fi
		if [ -x $1 ]; then fax="x"; fi
		if [ -u $1 ]; then fau="u"; fi
		if [ -g $1 ]; then fag="g"; fi
		
		# variables can be used in echo string without space seperations
		echo -e "The file has the following permissions: $far$faw$fax"
		echo -e "setuid: $fau, setgid: $fag"
	else
		if [ ! -e $1 ]; then
			echo -e "File does not exist"
		else
			echo -e "File is zero bytes in size"
		fi
		exit 1
	fi

else
	echo -e "Script: $0 expects only 1 filename argument"
fi