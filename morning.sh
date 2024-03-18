
#Display message in time(morning,afternoon,evening) 
#set -vx
if [ $# -ne 0 ]
then
echo "Syntax is $0"
fi
if [ $# -eq 0 ]
then
hr=`date +%H`
u=`whoami`
if [ $hr -gt 0 -a $hr -le 12 ]
then
echo "HELLO GOOD MORNING $u"
elif [ $hr -gt 12 -a $hr -le 16 ]
then
echo "HELLO GOOD AFTERNOON $u"
else
echo "HELLO GOOD EVENING $u"
fi
fi





