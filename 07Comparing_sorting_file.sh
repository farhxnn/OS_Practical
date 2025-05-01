#!/bin/bash

echo "*** Comparing and Sorting the Files ***"

# Take input for three files
echo "Enter the first file name (with extension):"
read f1

echo "Enter the second file name (with extension):"
read f2

echo "Enter the third file name (with extension):"
read f3

# Check if the files exist
if [ ! -f "$f1" ] || [ ! -f "$f2" ] || [ ! -f "$f3" ]; then
    echo "One or more files do not exist. Please check the file names."
    exit 1
fi

# Merging, sorting, and displaying the contents of the files page by page
echo "*** Merged and Sorted Content ***"
cat "$f1" "$f2" "$f3" | sort | less

