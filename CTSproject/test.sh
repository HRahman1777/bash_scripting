#!/bin/bash



gui_design(){
echo "########################################"
echo "########################################"
echo "##  COVID-19 Tracing And Suggestion  ###"
echo "##___________________________________###"
echo "########################################"
echo "##     Group Name: JAGUAR SQUAD      ###"
echo "##-----------------------------------###"
echo "##        Group Member Name          ###"
echo "##-----------------------------------###"
echo "##     Hasibur Rahman 181-15-1777    ###"
echo "##   Naim Istiak Masum 181-15-1777   ###"
echo "##   Md. Emtiyaz Ahmed 181-15-1777   ###"
echo "##    Md. Tanvir Ahmed 181-15-1777   ###"
echo "##Mahmudul Hasan Singara 181-15-1    ###"
echo "##     Nazmul Neta 181-15-1777       ###"
echo "########################################"
echo "########################################"
echo "##        Press 1 to Start           ###"
echo "##        Press 0 to End             ###"
echo "########################################"
echo "########################################"
}

start_from(){
read -p "Enter Your Name: " name
read -sp 'Password: ' pass
echo -e "\n: "
read -t 5 -p "Type your age in 5sec : " age
echo "$name"
echo "$pass"
echo "$age"
}


gui_design
echo -n "            : "
read choice
if [ $choice -eq 1 ]
then start_from
else echo "------  Fi-Amanillah   ----------"
fi

a=1
b=2
sum=5
sum=$(($sum+$b))
echo $sum

for i in {1..10} ; do
    echo -n '['
    for ((j=0; j<i; j++)) ; do echo -n ' '; done
    echo -n '-->'
    for ((j=i; j<10; j++)) ; do echo -n ' '; done
    echo -n "] $i"0% $'\r'
    sleep 1
done


for (( c=1; c<=15; c++ ))
do
   if [ $(($c%2)) -eq 0 ]
   then ch="Please Wait..   -" 
   else ch="Please Wait...  +"
   fi
   echo -n " $ch" $'\r'
   sleep 0.5
done

echo -e "\nresult !! \n\n\n"


