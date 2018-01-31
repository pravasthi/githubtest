#!/bin/bash
##set -x

. /home/swathi/Desktop/asgFunctions.sh
# Extract current date in YmdHM
cur_date=`date +%Y%m%d%H%M`
#setting mainlog_file
Mainlog=asgMain_${cur_date}.log

dir=$1
file=$2
absfile=$1/$2

  echo main program started>${Mainlog}

  echo now starting to check file existence>>${Mainlog}

filexists $absfile 

if [ $? -eq 0 ]
then
   echo "my file $dir/$file exists and out put received from function $?" >>${Mainlog}
else
   echo "program has error or my file $dir/$file doesnot exists and out put received from function $?" >>${Mainlog}
fi

   echo "main program starts checking $var and prints number of lines" >>${Mainlog}

content_checking $absfile

if [ $? -eq 0 ]
then 
echo "number of lines from $absfile is $var" >>${Mainlog}
else
echo "wrong number of lines from $var" >>${Mainlog}
fi

split_file $absfile
if [ $? -eq 0 ]
then
echo "my file $absfile is splitted in to two $?" >>${Mainlog}
else
echo "program has error(or)my file $absfile does not exists and output received from function $?" >>${Mainlog}
fi
echo "main program start checking $absfile and splits in to two files" >>${Mainlog}

split_in_directory
if [ $? -eq 0 ]
then
echo "files are moved succesfully" >> ${Mainlog}
else
echo "program has error(or) file does not exists and output received from function $?" >>${Mainlog}
fi
 
