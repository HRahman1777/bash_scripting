#!/bin/bash
i=1
j=1
while [ "$i" != "0" ]
do
read str
ha="Hajj"
um="Umrah"
if [ "$str" = "*" ]
then i=0
elif [ "$str" = "$ha" ]
then echo "Case $j: Hajj-e-Akbar"
elif [ "$str" = "$um" ]
then echo "Case $j: Hajj-e-Asghar"
else i=0
fi
j=$(($j+1))
done
