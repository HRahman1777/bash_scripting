#!/bin/bash

read limit

i=1
sum=0

while [ $i -le $limit ]
do
sum=$(( sum + i ))
echo "Position $i"

i=$(( i + 1 ))
done

echo "Total Sum: $sum"
