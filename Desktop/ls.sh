#!bin/bash
set -x
for i in 1 2 3 4 5
do
var=$(date +'%Y%d%m%H:%M:%S')
ls -al>log_$var
sleep 2
done


