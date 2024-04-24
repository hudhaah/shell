# TO PRINT PRIME NO IN A RANGE
# set -vx
if [ $# -ne 2 ]
then
  echo "syntax is $0 <no1> <no2> " 
fi
 a=$1
 b=$2
if [ $a -ge $b ]
then
 t=$a
 a=$b
 b=$t
fi
clear 
echo "prime numbers between $a and $b are"
# to check $a is prime or not
while [ $a -le $b ]
do
i=2
flag=0
while [ $i -le `expr $a / 2` ]
do
 if [ `expr $a % $i` -eq 0 ]
 then
   flag=1
 break
else
 i=`expr $i + 1`
fi
done
if [ $flag -ne 1 ]
then
 echo "$a"
fi
a=`expr $a + 1` 
done




