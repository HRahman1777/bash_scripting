#!/bin/bash

read num1
read num2
for (( c=num1+1; c<num2; c++ ))
do
if [ $(($c%5)) -eq 2 ] || [ $(($c%5)) -eq 3 ]
then echo "$c"
fi
done

