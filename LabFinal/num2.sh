#!/bin/bash

read x
c=0
sum=0
for (( i=x; i<=x*2; i++ ))
do
if [ $c -eq 5 ]
then exit 0
elif [ $((x%2)) -eq 0 ]
then c=$((c+1))
sum=$((sum+x))
x= $((x+1))
fi
done

echo $sum
