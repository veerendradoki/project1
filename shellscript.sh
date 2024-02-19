if[$# -eq 0 ]; then
	echo " usage: $0 <directory_path>"
	exit 1
fi

directory_path="$1"


if [ ! -d "$directory_path" ]; then
	echo "Error: '$directory_path'is not a valid directory."
	exit 1
fi


directory_size= $ (du -sh "$directory_path" | awk '{print $1}')

echo "size of '$directory_path":$directory_size"
