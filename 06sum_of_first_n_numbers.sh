#!/bin/bash

read -p "Enter a number: " num
i=1
sum=0
while [ $i -le $num ]
do
	sum=$((sum+i))
	i=$((i+1))
done
echo "Sum of first $num numbers is $sum"

