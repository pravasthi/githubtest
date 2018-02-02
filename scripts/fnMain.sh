#!/bin/bash

#INtialization of directories needed for program
basedir=/home/swathi
scrdir=${basedir}/scripts
logdir=${basedir}/logs
indir=${basedir}/input
outdir=${basedir}/output

#functions enabelement
. ${scrdir}/fnFunctions.sh

curdt=`date +%y%m%d%H%M%S`

fnMainLog=${logdir}/fnMain_${curdt}.log

#Execution is starting
echo "fnMain: program started executing at ${curdt}" >${fnMainLog}

#Assiging the parameters a meaning full Name
frNum=$1
snNum=$2
name=$3

echo "fnMain: User input given is ${frNum} ${snNum}" >>${fnMainLog}
echo "fnMain: User input given is $@" >>${fnMainLog}

#Validating the input
echo "fnMain: Validating the input ${curdt} ">>${fnMainLog}
if [ $# -ne 3 ]
then
  echo "fnMain: error Wrong number of input parameters: $@">>${fnMainLog}
  exit 1
fi

echo "fnMain: calling fnSum ${curdt}">>${fnMainLog}

fnSum ${frNum} ${snNum}


echo "fnMain: calling fnHello ${curdt}">>${fnMainLog}
fnHello ${name}

echo "fnMain: Program fnMain executed successfully ${curdt}">>${fnMainLog}









