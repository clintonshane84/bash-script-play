#!/bin/bash
find=$(which find)
home=/home/cwright
java=$(which java)
tmplog=/tmp/selenium.log

display_usage() {
	echo -e "Please provide one of the following arguments:"
	echo -e "start stop status restart force-restart"
	exit 1
}

echo -e "Searching for selenium server..."
echo -e "Please be patient"

# Searches for selenium JAR files on filesystem and reports
# only the first instance
selenium=$($find $home -type f -iname "selenium*.jar"| \
grep -Pi "2\.[4-7][0-9]" | sort | head -n 1)

echo -e "The following selenium files were found: $selenium"
if [ $# -ne 0 ]; then

	if [ -z $selenium -a -f $selenium ]; then

		case $1 in
			start)
				exec $java -jar $selenium > $tmplog 2>&1 &
				;;
			stop)
				;;
			status)
				;;
			restart)
				;;
			force-restart)
				;;
			*)  echo -e "Not a valid argument"
				display_usage
				;;
		esac
	else
		echo -e "Selenium standalone engine JAR file not found in:"
		echo -e "$home"
	fi

else
	display_usage
fi