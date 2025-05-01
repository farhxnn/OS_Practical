#!/bin/bash

# Prompt for two numbers
echo "Enter two numbers:"
read a
read b

# Prompt for the type of operation
echo "Enter Choice:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch

# Perform the chosen operation using a case statement
case $ch in
    1) 
        res=$((a + b))
        ;;
    2) 
        res=$((a - b))
        ;;
    3) 
        res=$((a * b))
        ;;
    4) 
        if [ $b -eq 0 ]; then
            echo "Error: Division by zero is not allowed!"
            exit 1
        fi
        res=$((a / b))
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

# Display the result
echo "Result: $res"

