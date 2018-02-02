
#!/bin/bash

#INtialization of directories needed for program
basedir=/home/swathi
scrdir=${basedir}/scripts
logdir=${basedir}/logs
indir=${basedir}/input
outdir=${basedir}/output

. ${scrdir}/inject_spaces.sh
# Extract current date in YmdHM
cur_date=`date +%Y%m%d%H%M`
#setting fnspacelog_file
fnspacelog=Main_${cur_date}.log
echo "fnspaces:main program starts executing at ${cur_date}" >${fnspacelog}
echo "fnspaces:now starting space insertion between string and count length of string 
with and without spaces" >>${fnspacelog}

spaces $1

if [ $? -eq 0 ]
then
echo "fnspacelog:succefully done space insertion at ${cur_date}" >>${fnspacelog}
else
echo "fnspacelog:error number of inputs or error in execution" >>${fnspacelog}
fi
