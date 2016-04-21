#!/bin/bash
# Bash example that demonstrates some of the features in bash to work with strings

string1='Henry'
string2='John'

# Compares the sorting order string1 and string2
if [[ $string1 > $string2 ]]; then
	exit 0
fi

# Compares characters in string1 with characters in string2
if [[ $string1 == $string2 ]]; then
	exit 0
fi

# Save the length of the string
myLen1=${#string1}
echo -e $myLen1

# Expart a certain part of a string
strExtract=${string1:0:1}
echo -e	$strExtract

# Extract all characters in the string
strAll=${string1#*.}
echo -e $strAll