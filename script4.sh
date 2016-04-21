#!/bin/bash
# Example bash script which has the objective of accepting two numbers
# and an operator from the users input (stdin) and display the result
echo -e "A simple command line calculator."
echo -e "Please supply the first number:"
read number1
echo -e "Please supply the second number:"
read number2
echo -e "Choose an operation to perform on the 2 supplied numbers:"
echo -e "1. Addition"
echo -e "2. Subtraction"
echo -e "3. Multiplication"
echo -e "4. Division"
read op

if [ $op -ge 1 -a $op -lt 5 ]; then
	if [ $op -eq 4 ]; then
		if [ $number1 -ne 0 -a ! $number2 -eq 0 ]; then
			echo -e "Division result: " $(($number1 / $number2))
		else
			echo -e "Cannot divide a number by 0"
		fi
	elif [ $op -eq 3 ]; then
		echo -e "Multiplication result: " $(($number1 * $number2))
	elif [ $op -eq 2 ]; then
		echo -e "Subtraction result: " $(($number1 - $number2))
	elif [ $op -eq 1 ]; then
		echo -e "Addition result: " $(($number1 + $number2))
		
	fi
else
	echo "Invalid option given for the operator"
	exit 1
fi