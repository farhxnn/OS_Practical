#!/bin/bash

# Accept input for base and exponent
echo "Enter a number (base):"
read a
echo "Enter power (exponent):"
read p

# Initialize result as 1
ans=1
i=1

# Loop to calculate the power
while [ $i -le $p ]
do
    ans=`expr $ans \* $a`  # Multiply ans by base a using expr
    i=`expr $i + 1`        # Increment the counter
done

# Output the result
echo "Answer of $a^$p is $ans"
