if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <file.c or file.cpp>"
    exit 1
fi

file="$1"
extension="${file##*.}"

if [[ "$extension" == "c" ]]; then
    gcc "$file" -o "${file%.*}"
elif [[ "$extension" == "cpp" ]]; then
    g++ "$file" -o "${file%.*}"
else
    echo "Unknown file extension: $extension"
    exit 1
fi
