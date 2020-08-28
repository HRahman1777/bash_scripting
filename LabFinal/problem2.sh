#!/bin/bash

read x
c=1
sum=0
if [ $((x%2)) -ne 0 ]
then x=$((x+1))
fi
while [ $c -le 5 ]
do
sum=$((sum+x))
x=$((x+2))
c=$((c+1))
done

echo $sum
