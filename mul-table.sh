#!/bin/bash

# Multiplication Table Generator
# This script generate either a full multiplication table (1-10) or a partial script within (Custom Range)
# Author: ICO-tech

while true; do
	
	# Ask the user for a number
	echo "Enter a number for the multiplication table: "
	read num

	# Check if the stored input is a number
	if ! [[ "$num" =~ ^[0-9]+$ ]]; then
		echo "❌ That is not a valid number. Please try again."
		continue
	fi

	# Ask if they want full or partial table
	
	full=f
        partial=p
	echo "DO you want a full table (1-10) or a partial table (custom range)?"
	echo "Type: full or partial"
	read choice
	


	# Default range
	
	start=1
	end=10

	if [[ "$choice" == "partial" ]]; then

		# Asking for a custon range
		echo "Enter the starting multiplier: "
		read start
		echo "Enter the ending multiplier: "
		read end

		# Validating the range
		
		if ! [[ "$start" =~ ^[0-9]+$ && "$end" =~ ^[0-9]+$ && "$start" -le "$end" ]]; then
                echo "⚠️ Invalid range. Using default (1–10)."
			start=1; end=10
		fi
	fi

	# Show the multiplication table
	
	echo "------------------------------"
	echo " Multiplication Table for $num"
	echo "------------------------------"
	
	for (( i=$start; i<=$end; i++ ))
	do 
		echo "$num x $i = $((num * i))"
	done

	echo "-------------------------------"

	# Ask if they want to do it again
	
	echo "Do you want to generate another multiplication table: (yes/no)"
	read again

	if [[ "$again" != "yes"  ]]; then
		 echo "Goodbye 👋"
		 break
	fi
done








