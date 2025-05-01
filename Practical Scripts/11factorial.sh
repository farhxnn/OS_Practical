#!/bin/bash

# Input number
echo -n "Enter a number: "
read num

fact=1

# Loop to calculate factorial
for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done

# Output
echo "Factorial of $num is: $fact"

