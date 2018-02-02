#!bin/bash
spaces()
{
echo "fnspaces:input received to a progrm $@ $cur_date" >>${fnspacelog}
echo "fnspaces:checking input $# at $cur_date" >>${fnspacelog}
if [ $# -ne 1 ]
then 
echo "fnspaces:you gave wrong no of input at $cur_date" >>${fnspacelog}
return 1
exit
fi

echo "fnspaces:script to inject spaces between every character" >>${fnspacelog}

file=`echo $1|sed 's/.\{1\}/ &/g'`
echo ${file} >>${fnspacelog}
echo ${#1} >>${fnspacelog}
var=`echo ${file}|xargs`
echo ${#var} >>${fnspacelog}
if [ ${#var}/2 -eq ${#1} ]
then
echo "Hurray" >>${fnspacelog} 
else
echo "not_matched" >>${fnspacelog}
fi
return 0
}



