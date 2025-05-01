#!/bin/bash

echo -n  "Enter a number: "
read num

i=2
flag=0

while [ $i -le $((num / 2)) ]
do
    if [ $((num % i)) -eq 0 ]
    then
        flag=1
        break
    fi
    i=$((i + 1))
done

if [ $flag -eq 1 ]
then
    echo "$num is not a prime number"
else
    echo "$num is a prime number"
fi
	
