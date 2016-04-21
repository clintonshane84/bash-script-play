#!/bin/bash
#
# Learning Bash Script
#
# \ is used to join a single command on multiple lines
# ; is used to write multiple commands on a single line
# Command1 ;Command2 ;Command3
# commands run sequentially using ; run even if previous commands fail
# && operator allows multiple commands to be run on a single line but aborts if one of the
# commands fails
# || operator allows multiple commands to be run on a single line but continues to run each
# command until one is successful
#
# Functions:
# 1. Declare the function
# 2. Call the function
#
# function_name(){
#	command...
# }
#
# diplay(){
#	echo "This is a sample function also known as subroutines"
#	echo "You opted print the following text " $1
# }
# arguments given to the function are passed using $1, $2 sequentially
#
# display "Bob"
# display "Stuart
#
# Built in Shell Commands:
# 
# Commands can be divided into the following categories:
#
# Compiled applications
# Built-in bash commands
# Other scripts
#
# Command Substitution
#
# The output of commands can be used within another command as follows:
# command `command`
# command $(command)
# 
# example:
# cd /lib/modules/$(uname -r)/
#
# Environment variables
# echo $PATH
# PATH=$PATH:/tmp
#
# When referencing an environment variable the $ symbol must be prefixed to the key name
# of the variable. When assign the variable a value it needs not be prefixed with the
# $ symbol
#
# Exporting variables
#
# export VAR=value
#
# OR
#
# VAR=value ; export VAR
#
# While child processes will be able to read these set variables, they will not be able
# modify the value so that the parent will see the change. Exported variables are not shared
# but only copied
#
# Script parameters
#
# $0 - script name
# $1 - first argument
# $2, $3, etc... second, third parameter, etc...
# $* - all parameters
# $# Number of arguments
#
# Input redirection
# wc -l < /temp/free.out
# The input of a command can be input to the file

