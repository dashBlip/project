#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: ./run.sh <problem_name>"
    exit 1
fi

PROBLEM_NAME=$1
SOLUTION_FILE="$PROBLEM_NAME/solution.cpp"
INPUT_FILE="$PROBLEM_NAME/input.txt"
OUTPUT_FILE="$PROBLEM_NAME/output.txt"
EXECUTABLE="$PROBLEM_NAME/solution"

# Check if problem directory exists
if [ ! -d "$PROBLEM_NAME" ]; then
    echo "Error: Problem directory not found: $PROBLEM_NAME"
    exit 1
fi

# Check if solution file exists
if [ ! -f "$SOLUTION_FILE" ]; then
    echo "Error: Solution file not found: $SOLUTION_FILE"
    exit 1
fi

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file not found: $INPUT_FILE"
    exit 1
fi

echo "Compiling $SOLUTION_FILE..."
g++ -std=c++17 -O2 -Wall "$SOLUTION_FILE" -o "$EXECUTABLE"

if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

echo "Running solution..."
time "$EXECUTABLE" < "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Solution executed successfully."
echo "Output saved to: $OUTPUT_FILE" 