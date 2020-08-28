#!/bin/bash
echo "Enter a number"
read num

rem=$(( $num % 2 ))
 
if [ $rem -eq 0 ]
then
  echo "$num is even number"

fact=1

while [ $num -gt 1 ]
do
  fact=$((fact * num))
  num=$((num - 1)) 
done

echo "factorial is $fact" 

else
  echo "$num is odd number"
  
for((i=2; i<=$num/2; i++))
do
  ans=$(( num%i ))
  if [ $ans -eq 0 ]
  then
    echo "$num is not a prime number."
    exit 0
  fi
done
echo "$num is a prime number."
fi

