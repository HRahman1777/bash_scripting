#!/bin/bash

gui_design(){                            
clear
echo "#################################################"
echo "#################################################"
echo "##      COVID-19 Tracing And Suggestion       ###"
echo "##____________________________________________###"
echo "#################################################"
echo "##         Group Name: JAGUAR SQUAD           ###"
echo "##--------------------------------------------###"
echo "##            Group Members Name              ###"
echo "##--------------------------------------------###"
echo "##        Hasibur Rahman  181-15-1777         ###"
echo "#################################################"
echo "#####                 About                 #####"
echo "## This is a simple console app (bash script). ##"
echo "## By gathering some question's answer from    ##"
echo "## user, this will return some suggestion for  ##"
echo "##                 that user.                  ##"
echo "##--------------------------------------------###"
echo "##     Credit for Questionnaire and Advice     ##"
echo "##               ---------------               ##"
echo "##     #1 WHO (World Health Organization)      ##"
echo "##   #2 Dr.Mahbubur Rahman (Medical Officer)   ##"
echo "## Bangabandhu Sheikh Mujib Medical University ##"
echo "##                  Hospital                   ##"
echo "##____________________________________________###"
echo "#################################################"
echo "##             Enter 1 to Start               ###"
echo "##             Enter 0 to Close               ###"
echo "#################################################"
echo "#################################################"
}


check(){
echo -e "\n\n"
read -p "   ##     Do you want to check again? (yes/no) : " chk
if [ "$chk" = "yes" ]
then
start
else
main
fi
}


advice(){
echo -e "=> Always use mask and hand sanitizer.(specially when outside)\n
=> Maintain social distance.\n
=> Gargle and steam with hot water.\n
=> Eat nutritious food.\n
=> Try to follow the hygiene rules.\n
=> Vitamin C, Vitamin D there are no side effects of the national medicine. So you can eat it without a prescription.\n
=> Eat seasonal fruits, eat enough vegetables to boost your immunity.\n 
=> Exercise regularly."
check
}

highRisk(){
echo -e "=> Consult with a doctor.\n
=> Maybe you need COVID-19 test.\n
=> You need to take care of your mental health.\n
=> Keep your morale strong at this time.
\n## And also try to maintain those advice given below.  ##\n"
advice
}

risk(){
echo -e "=>You may consult with a doctor.\n
=> Keep an eye on the level of oxygen in the body.
(Heart rate and oxygen level in the body can be measured by touching the head of the finger.) The pulse oximeter usually assumes a normal oxygen level of 95 to 100 
percent.\n
==> If you feel any problem on oxygen level in your body, consult with a doctor immediately.\n
=> Keep your morale strong at this time.
\n## And also try to maintain those advice given below.  ##\n"
advice
}



result(){                        

for (( c=1; c<=10; c++ ))
do
   if [ $(($c%2)) -eq 0 ]
   then ch="  Please Wait..   -" 
   else ch="  Please Wait...  +"
   fi
   echo -n " $ch" $'\r'
   sleep 0.5
done

re=$1
re2=$2
si=$3
nam=$4
ag=$5


echo -e "\n###########   RESULT  #############\n"
echo -e "##    Dear $name   ##"
echo -e "--------------------------------------------\n\n"


if [ $re -ge 1 ] && [ $re2 -ge 4 ]
then highRisk
elif [ $re -ge 2 ] && [ $re2 -ge 2 ]
then highRisk
elif [ $re -ge 2 ] && [ $re2 -ge 1 ]
then risk
elif [ $re -ge 1 ] && [ $re2 -ge 2 ]
then risk
elif [ $si -ge 4 ] && [ $re -ge 1 ]
then risk
elif [ $si -ge 4 ] && [ $re -ge 1 ]
then risk
else advice
fi
}

start(){                           
clear
red=0
red2=0
sim=0
echo "#################################################"
echo "##      COVID-19 Tracing And Suggestion       ###"
echo "##____________________________________________###"
echo "#################################################"
read -p "Q1. Enter your name: " name
read -p "Q2. Enter your age: " age


read -p "Q3. Do you have diabetes? (yes/no): " q3
if [ "$q3" = "yes" ]
then red=$(($red+1))
fi


read -p "Q4. Do you have heart disease? (yes/no): " q4
if [ "$q4" = "yes" ]
then red=$(($red+1))
fi


read -p "Q5. Do you have any lung complications? (yes/no): " q5
if [ "$q5" = "yes" ]
then red=$(($red+1))
fi


read -p "Q6. Do you have high blood pressure? (yes/no): " q6
if [ "$q6" = "yes" ]
then red=$(($red+1))
fi


read -p "Q7. Are you meet someone who is infected? (yes/no): " q7
if [ "$q7" = "yes" ]
then red=$(($red+2))
fi


read -p "Q8. Are you meet with unknown person? (yes/no): " q8
if [ "$q8" = "yes" ]
then red=$(($red+1))
fi


read -p "Q9. Are you suffering for fever? (yes/no): " q9
if [ "$q9" = "yes" ]
then red2=$(($red2+1))
fi


read -p "Q10. Do you have a dry cough? (yes/no): " q10
if [ "$q10" = "yes" ]
then red2=$(($red2+1))
fi


read -p "Q11. Do you feel muscle aches? (yes/no): " q11
if [ "$q11" = "yes" ]
then red2=$(($red2+1))
fi


read -p "Q12. Do you feel the shortness of breath? (yes/no): " q12
if [ "$q12" = "yes" ]
then red2=$(($red2+1))
fi


read -p "Q13. Do you have a headache? (yes/no): " q13
if [ "$q13" = "yes" ]
then sim=$(($sim+1))
fi


read -p "Q14. Do you suffer from diarrhea? (yes/no): " q14
if [ "$q14" = "yes" ]
then sim=$(($sim+1))
fi


read -p "Q15. Does your phlegm bleed? (yes/no): " q15
if [ "$q15" = "yes" ]
then sim=$(($sim+1))
fi


read -p "Q16. Can you taste or smell? (yes/no): " q16
if [ "$q16" = "yes" ]
then sim=$(($sim+1))
fi


read -p "Q17. Do you feel discoloration of fingers or toes? (yes/no): " q17
if [ "$q17" = "yes" ]
then sim=$(($sim+1))
fi


read -p "Q18. Are you depressed? (yes/no): " q18
if [ "$q" = "yes" ]
then sim=$(($sim-1))
fi

result $red $red2 $sim $name $age
}

choice(){                                    
read -p "Enter Your Choice: " choice
if [ $choice -eq 1 ]
then
start
elif [ $choice -eq 0 ]
then 
clear
echo "#################################################"
echo "##      COVID-19 Tracing And Suggestion       ###"
echo "##____________________________________________###"
echo "#################################################"
echo "##          -----   THANK YOU    -----         ##"
echo "##          ---   fi-amanillah    -----        ##"
echo "#################################################"
sleep 2
else echo -e "Please Enter Valid Choice!! \n"
choice
fi
}

main(){
gui_design
choice
}


main


