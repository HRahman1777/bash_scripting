#!/bin/bash

add(){
a=$1
b=$2
result=$((a + b))
}

sub(){
a=$1
b=$2
result=$((a - b))
}

mul(){
a=$1
b=$2
result=$((a * b))
}

div(){
a=$1
b=$2
result=$((a / b))
}

invalid(){
echo "Invalid input"
}


read x
read operator
read y

case $operator in
              "+")
              add $x $y 
              ;;
              "-")
              sub $x $y 
              ;;
              "*")
              mul $x $y 
              ;;
              "/")
              div $x $y 
              ;;
              *)
              invalid
              ;;
esac

echo $result
