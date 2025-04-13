#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: ./test.sh <problem_name>"
    exit 1
fi

PROBLEM_NAME=$1
OUTPUT_FILE="$PROBLEM_NAME/output.txt"
EXPECTED_FILE="$PROBLEM_NAME/expected.txt"

# Check if problem directory exists
if [ ! -d "$PROBLEM_NAME" ]; then
    echo "Error: Problem directory not found: $PROBLEM_NAME"
    exit 1
fi

# Check if output file exists
if [ ! -f "$OUTPUT_FILE" ]; then
    echo "Error: Output file not found: $OUTPUT_FILE"
    echo "Run the solution first: ./run.sh $PROBLEM_NAME"
    exit 1
fi

# Check if expected file exists
if [ ! -f "$EXPECTED_FILE" ]; then
    echo "Error: Expected output file not found: $EXPECTED_FILE"
    exit 1
fi

# Check if expected file is empty
if [ ! -s "$EXPECTED_FILE" ]; then
    echo "Warning: Expected output file is empty!"
    echo "Add the expected output to: $EXPECTED_FILE"
    exit 1
fi

echo "Comparing output with expected output..."
diff_output=$(diff -Z -B "$OUTPUT_FILE" "$EXPECTED_FILE")

if [ -z "$diff_output" ]; then
    echo -e "\e[32mTestcase PASSED!\e[0m"
else
    echo -e "\e[31mTestcase FAILED!\e[0m"
    echo "Differences found:"
    echo "$diff_output"
    
    echo -e "\nOutput file content:"
    cat "$OUTPUT_FILE"
    
    echo -e "\nExpected file content:"
    cat "$EXPECTED_FILE"
fi 