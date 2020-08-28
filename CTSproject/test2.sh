two(){
red=$1
red2=$2
sim=$3
name=$4

one=1
four=4
two=2
tFive=35

echo -e "\n###########   RESULT  #############\n"
echo -e "        Dear $name..."

if [ "$red" -ge "$one" ] && [ "$red2" -ge "$four" ]
then echo "highRisk"
elif [ "$red" -ge "$one" ] && [ "$red2" -ge "$two" ]
then echo "risk"
else
  if [ "$sim" -ge "$four" ] && [ "$red" -ge "$one" ]
  then echo "risk"
  elif [ "$sim" -ge "$four" ] && [ "$age" -ge "$tFive" ]
  then echo "risk"
  else echo "advice"
  fi
fi

}

one(){
re=1
re2=4
si=0
nam="Hasibur"

two $re $re2 $si $nam

}


one
