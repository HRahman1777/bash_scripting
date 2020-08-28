#!/bin/bash

funOne(){
echo "This is function one"
}

funTwo(){
echo "This is function two"
}

addFun(){
a=$1
b=$2
add=$(( a + b)) 
}


funOne
funTwo
addFun 4 5

echo "$add"
