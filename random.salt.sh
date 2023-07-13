#!/bin/bash
# Create a random string of specified length default to 32 characters

if [ $# -eq 0 ]; then
	CHARACTERS=32;
else
	ISNUMBER='^[0-9]+$';
	if ! [[ $0 =~ $ISNUMBER ]]; then
		echo
		echo "Parameter provided not a number."
		echo "Provide a number as a paramter or nothing to use the default 32 characters."
		echo
		exit 1;
	else
		CHARACTERS=$0;
	fi
fi

array=()
for i in {a..z} {A..Z} {0..9};
	do
	array[$RANDOM]=$i
done
printf %s ${array[@]::$CHARACTERS} $'\n'
