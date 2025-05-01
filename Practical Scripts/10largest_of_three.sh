#!/bin/bash

# Input 3 numbers
echo "Enter three numbers:"
read a
read b
read c

# Find the largest number
if (( a >= b && a >= c )); then
    largest=$a
elif (( b >= a && b >= c )); then
    largest=$b
else
    largest=$c
fi

# Calculate total and average
total=$((a + b + c))
average=$((total / 3))

# Display results
echo "Largest number is: $largest"
echo "Total is: $total"
echo "Average is: $average"

