echo "####################################"
echo -e "   Welcome to the BMI calculator"
echo "####################################"
echo -e "\n"
project()
{
  read -p "Please enter your weight in pounds: " weight
read -p "Please enter your your height in inches: " height

total_weight=$(($weight*703))
total_height=$(($height*$height))
BMI=$(($total_weight/$total_height))
echo "Your weight is $weight in pounds"
echo "Your height is $height in inches"
echo "--------------------------------"
echo "Your BMI is: $BMI"

x=18
y=25
z=30
if [ $BMI -le $x ]
then
        echo "Your BMI is $BMI. You are underweigyt"
elif [ $BMI -lt $y ]
then
        echo "Your BMI is $BMI. You are normal"
elif [ $BMI -lt $z ]
then
        echo "Your BMI is $BMI. YOu are overweight "
else
        echo "You BMI is $BMI. You are Obese"
fi
checkFun
}

checkFun()
{
  echo "####################################"
read -p "Do you want to calculate again ? (yes/no) : " check

y="yes"
n="no"

if [ "$check" = "$y" ]
then project
elif [ "$check" = "$n" ]
then echo -e "\n            Thank You  \n"
else echo -e "Please enter yes or no \n"
checkFun
fi
}
project
