#!/usr/bin/env bash

if [[ "$#" -ne 2 ]]
then
	echo "Incorrect no of parameters"
else
	if [[ -f "$1" ]]
	then
		if grep -q "$2" "$1"; 
		then
			echo "Given name already exists"
		else
			echo "$2" >> "$1"
			echo "Successfully added name to the list"
		fi
	else
		echo "File does not exist with the given filename"
	fi
fi
