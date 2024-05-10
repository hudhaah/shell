#occurance of words

if [ $# -eq 0 ]
then
echo " suntax is <$0> <word>"
exit 1
fi

word=$1
shift
count=0

while [ $# -ne 0 ]
do
for wd in `cat $1`
do

if [ $wd = $word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo " no of occurance of words=$count"
