#!/bin/bash

echo "Enter here:"  
read var1  
echo $var1

read -p "Enter your name: " name 
read -sp "Enter password: " pass
echo -e "\nName: $name \nPassword: $pass"

echo "Enter names into array: "
read -a name
echo "$name"
echo "name1: ${name[0]}"
echo "name1: ${name[1]}"
echo "name1: ${name[2]}"
