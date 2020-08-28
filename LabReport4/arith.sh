#!/bin/bash

read -p "Enter Number1: " num1
read -p "Enter Number2: " num2

sum=$(($num1+$num2))
echo "Sum of $num1 and $num2 is: $sum"

sub=$(($num1-$num2))
echo "Substract of $num1 and $num2 is: $sub"

mul=$(($num1*$num2))
echo "Multips of $num1 and $num2 is: $mul"

div=$(($num1/$num2))
echo "Division of $num1 and $num2 is: $div"

