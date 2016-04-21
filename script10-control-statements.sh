#!/bin/bash
# Bash example that illustrates the usage of control statements
# for, while, until

sum=0
for i in 1 2 3 4
do
	sum=$(($sum+$i))
done
echo -e "The sum of $i numbers is: $sum"

for filename in $(ls)
do
	# Some string regular expression extraction
	ext=${filename##*\.}
	case $ext in
	c) echo -e "$filename: C Source File"
		;;
	o) echo -e "$filename: Object File"
		;;
	sh) echo -e "$filename: C Shell Script File"
		;;
	txt) echo -e "$filename: Plain Text File"
		;;
	*) echo -e "$filename: Unknown File"
		;;
	esac
done

i = 10

echo -e "Entering while loop until 10 is subtracted 10 times"
while [ $i -ne 1 ]
do
	i=$(($i-1))
done
echo -e $i
i=1

echo -e "Going loop until i = 10, starting with i = 1"
until [ $i -eq 10 ]
do
	let i++
	echo -e "Iterate in UNTIL loop, i = $i"
done