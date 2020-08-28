#!/bin/bash

read a

if [ $a -eq 5 ]
then echo "Input value is equal to 5"
elif [ $a -lt 5 ]
then echo "Input value is less than 5"
elif [ $a -gt 5 ]
then echo "Input value is greater than 5"
elif [ $a -ge 5 ]
then echo "Input value is greater than equal 5"
elif [ $a -le 5 ]
then echo "Input value is less than equal 5"
else 
echo "some"
fi
