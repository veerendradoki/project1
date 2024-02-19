if [ $# -eq 0]; then
	echo " usage: $0<file_or_directory_path>"
	exit 1
fi

path="$1"

if [! -e "$path" ]; then
	echo "Error: '$path' does not exist."
	exit 1
fi

if [ -f "$PATH" ]; then
	echo "$path is a regular file."
elif [ -d "$path" ]; then
	echo "$path is a directory."
else
	echo "$path has a unknown status."

fi

if [-r "$path" ]; then
	echo "$path is writable."
else
	echo "$path is not writable."
fi

if [ -x "$path" ]; then
	echo "$path is executable."
else
	echo "$path is not executable."
fi
