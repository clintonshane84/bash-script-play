#!/bin/bash
# Bash example that illustrates the use of the case control statement

echo -e "Give some input:"
read charac

case "$charac" in
	"a"|"A") echo "You have typed a vowel" ;;
	"e"|"E") echo "You have typed a vowel" ;;
	"i"|"I") echo "You have typed a vowel" ;;
	"o"|"O") echo "You have typed a vowel" ;;
	"u"|"U") echo "You have typed a vowel" ;;
	*) echo "You have typed a consonant" ;;
esac
exit 0 