#!/bin/bash
# Arithmetic expressions

# Method 1
echo $(expr 1 + 1)

# Method 2
echo $((1+1))

# Method 3
let x=( 1 + 2 ); echo $x