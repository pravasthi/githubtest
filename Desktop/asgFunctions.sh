
filexists()
{
echo inputs recevied to the progra are $@ >>${Mainlog}

echo Input checking $# >>${Mainlog}

if [ $# -ne 1 ] 
then
  echo you gave wrong number of parameters>>${Mainlog}
  return 1
exit
fi

echo file checking $1>>${Mainlog}

if [ -e $1 ]
then
  echo file exists >>${Mainlog}
  return 0
exit
else
  echo file doesn exists >>${Mainlog}
  return 1
exit
fi
#return 0
}

content_checking()
{
   echo "inputs received from program $@" >>${Mainlog}
   echo "input checking $#" >>${Mainlog}
if [ $# -ne 1 ]
then 
   echo "you gave wrong no. of inputs" >>${Mainlog}
   return 1
exit
fi
   echo "checking file content of file $1" >>${Mainlog}

var=`cat $1|wc -l`

  echo "no. of lines from file $1 " >>${Mainlog}
return 0
exit
}
split_file()
{
       echo "Inpput received from a program are $@" >>${Mainlog}

       echo "Input checking $#" >>${Mainlog}

if [ $# -ne 1 ]
then
       echo "you gave wrong number of inputs" >>${Mainlog}
return 1
exit
fi

       echo "splitting file in to two if file has more then 6 lines" >>${Mainlog}

 split -l 3 $1 F

 var=`ls F*`

       echo "two splitted files are "$var >>${Mainlog}
return 0
exit
}

split_in_directory()
{
echo "Input received from a program are $@" >>${Mainlog}
if [ $# -ne 0 ]
then
echo "you gave a wrong inputs" >>${Mainlog}
exit 1
fi

echo "splitted files moving in to different directories" >>${Mainlog}

if [ -d split1 ]
then
echo "split1 exists" >>${Mainlog}
mv Faa split1
else 
echo "split1 does not exists" >>${Mainlog}
mkdir split1
mv Faa split1
fi
echo "directory is split2" >>${Mainlog}


if [ -d split2 ]
then
echo "split2 exists" >>${Mainlog}
mv Fab split2
else 
echo "split2 does not exists" >>${Mainlog}
mkdir split2
mv Fab split2
fi
echo "directory is split2" >>${Mainlog}
}












