#!/bin/sh
# A wrapper script for odt2txt.py, to establish essentially correct default 
# behavior.

for file_path
do
    "$(dirname -- "$0")/odt2txt.py" "$file_path" > "${file_path%.odt}.txt"
    if [ $? -ne 0 ]
    then
        echo "Failed to convert $file_path"
    fi
done
