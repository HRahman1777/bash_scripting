#!/bin/bash

i=1
j=60

while [ $j -ge 0 ]
do
echo "I=$i  J=$j"
i=$((i+3))
j=$((j-5))
done

