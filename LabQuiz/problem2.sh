#!/bin/bash
 
read -p "Enter a number: " num
f=1
for ((c=1;c<=num;c++))
do
f=$(($f*$c))
done 
echo "Factorial of $num is: $f"
