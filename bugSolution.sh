#!/bin/bash

# Improved script with error handling

file_to_process="my_data.txt"

# Check if the file exists and is readable
if [ ! -f "$file_to_process" ] || [ ! -r "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found or not readable."
exit 1
fi

# Process the file
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$file_to_process"

echo "Finished processing file."