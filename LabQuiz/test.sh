echo "Enter Any Number"
read Number
fact=1
for((i=1;i<=Number;i++))
do
fact=$(($fact*$i))
done
echo "factorial value $fact"
