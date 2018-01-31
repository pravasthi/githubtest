#!bash/bin
fnclocks()
{
#validating inputs 
echo "fnclocks:validating inputs at ${cur_date}" >>${fnmain}
if [ $# -ne 0 ]
then 
echo"fnclocks:wrong no of input parameters $@": >>${fnmain}
return 1
exit 
fi
#finding clocks

#var=/home/swathi/logs/*.log
for var in `ls /home/swathi/logs/*.log`
do
echo hello this is the file I am checking ${var}>>${fnmain}
clocknum=`grep -w clock ${var}|wc -l`
if [ $clocknum -ne 0 ]
then
echo "file Name:${var} has $clocknum clocks" >>${fnmain}
fi
done
echo "fnclocks: successfully found no of clocks in at ${cur_date}" >>${fnmain}
return 0
}
