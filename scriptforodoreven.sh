echo " Enter a number:"
read number

if ! [["$number" =~ ^[0-9]+$ ]];then
	echo "Error: '$number' is not a valid number."
	exit 1
fi

if ((number % 2 == 0)); then
	echo "$number is an even number."
else
	echo "$number is an odd number."
fi

