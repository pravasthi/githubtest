#!/bin/bash

#i want to take customer_name,month and display total_amount spend in the month

#i created a comma separated file
echo "enter name:$1"

echo "enter month:$2"
oifs=$ifs
ifs=","

for i in {1....10}
do

echo `cat $3 information.csv`
done


 





