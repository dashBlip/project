#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: ./create_problem.sh <problem_name>"
    exit 1
fi

PROBLEM_NAME=$1
TEMPLATE_FILE="template.cpp"

# Check if template exists
if [ ! -f "$TEMPLATE_FILE" ]; then
    echo "Error: Template file not found: $TEMPLATE_FILE"
    exit 1
fi

# Create problem directory
mkdir -p "$PROBLEM_NAME"

# Copy template to problem directory
cp "$TEMPLATE_FILE" "$PROBLEM_NAME/solution.cpp"

# Create empty input and expected output files
touch "$PROBLEM_NAME/input.txt"
touch "$PROBLEM_NAME/expected.txt"
touch "$PROBLEM_NAME/output.txt"

echo "Problem folder '$PROBLEM_NAME' created successfully"
echo "Files created:"
echo "  - $PROBLEM_NAME/solution.cpp"
echo "  - $PROBLEM_NAME/input.txt"
echo "  - $PROBLEM_NAME/expected.txt"
echo "  - $PROBLEM_NAME/output.txt"
echo ""
echo "Next steps:"
echo "1. Add your problem input to '$PROBLEM_NAME/input.txt'"
echo "2. Add expected output to '$PROBLEM_NAME/expected.txt'"
echo "3. Edit your solution in '$PROBLEM_NAME/solution.cpp'"
echo "4. Run your solution: ./run.sh $PROBLEM_NAME"
echo "5. Test your solution: ./test.sh $PROBLEM_NAME" 