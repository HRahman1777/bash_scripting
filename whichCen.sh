#!/bin/bash
read year
cen=100
inc=1
if [ $year -le 100 ]
then echo "1"
elif [ $((year % 100)) -eq 0 ]
then ans=$(($year/$cen))
echo "$ans"
else 
ans2=$(($year/$cen))
res=$(($ans2+$inc))
echo "$res"
fi
