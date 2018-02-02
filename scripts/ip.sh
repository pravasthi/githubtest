#!/bin/bash
set -x
echo "Enter IP address"
read IP
OIFS=$IFS
IFS='.'
set -- $IP
if [ "$#" -ne 4 ];
then
echo "must have 4 parts"
exit 1
fi
for oct in $1 $2 $3 $4;do
 echo $oct|egrep "^[0-9]+$" 
if [ "$oct" -le "0" -o "$oct" -gt "255" ];then
echo "$oct:out of range"
exit 1
fi
done

echo "$IP"|grep "\.$" 
if [ "$?" -eq "0" ];then
echo "trailing period"
exit 1
fi
if [ "$?" -ne "0" ];then
echo "$oct:Not numeric"
exit 1
fi
#if [ "$1" -eq "0" ];then
#echo "first oct should not be zero"
#exit 1
fi
echo "$IP address validates ok!"
exit 0
done















