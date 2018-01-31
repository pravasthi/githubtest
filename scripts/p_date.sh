#!bin/bash
#date()

for i in 1 2 3 4 5
do
var=`date +%Y/%m/%d,%H:%M:%S`
echo "todays date is: ${var}" >>log.txt
sleep 1
done


