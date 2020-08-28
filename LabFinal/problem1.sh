#!/bin/bash

powerOf(){
x=$1
y=$2
z=$(( x ** y ))
echo "Value of z is: $z"
primeChecker $z
}

primeChecker(){
value=$1
if [ $value -eq 1 ]
then echo "Value of z: $value which is not a prime number."
else
for((i=2; i<=$value/2; i++))
do
#checker=$(( value%i ))
if [ $(( value%i )) -eq 0 ]
then
echo "Value of z: $value which is not a prime number."
exit 0
fi
done
echo "Value of z: $value which is a prime number."
fi
}


read a
read b

powerOf $a $b
