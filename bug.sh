#!/bin/bash

# This script attempts to process a file, but it has a subtle bug.
# It assumes the file always exists and is readable, which is not always true.

file_to_process="my_data.txt"

# Attempt to process the file without checking if it exists
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$file_to_process"

echo "Finished processing file."