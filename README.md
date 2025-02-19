# Shell Script Bug: Silent Failure on Missing File

This repository demonstrates a common but subtle bug in shell scripting: the failure to handle cases where an input file may not exist or is not readable. The script `bug.sh` attempts to process a file but silently fails if the file is missing.  The solution `bugSolution.sh` provides improved error handling.

## Bug Description
The original script does not check for the existence or readability of the input file before attempting to process it.  If the file is missing or permissions prevent reading, the script exits without reporting an error. This behavior can make debugging and maintenance more difficult.

## Solution
The solution incorporates a check to verify the file exists and is readable using the `-f` and `-r` options of the `test` command. This ensures that the script reports an error if the file is not accessible, preventing silent failures.

## How to Reproduce
1.  Clone the repository.
2.  Run `bug.sh` (observe the silent failure if `my_data.txt` is missing).
3.  Run `bugSolution.sh` (observe the error message if `my_data.txt` is missing).