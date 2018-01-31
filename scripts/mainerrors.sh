

#!/bash/bin
# Initilization needed for directories
set -x
base_dir=/home/swathi
scripts_dir=${base_dir}/scripts
input_dir=${base_dir}/input
output_dir=${base_dir}/output
logs_dir=${base_dir}/logs

#function enabling

. ${scripts_dir}/errors_in_log.sh
cur_date=`date +%Y%m%d%H%M%S`
fnmain=${logs_dir}/errormain_${cur_date}.log

# Execution is starting

 echo "fnmain:main program starts execution at ${cur_date}" >${fnmain}
 echo "fnmain:user input given is $@" >>${fnmain}
#validating the input
echo "validating the input at ${cur_date}" >>${fnmain}
if [ $# -ne 0 ]
then
echo "fnmain:wrong no of input parameters #@" >>${fnmain}
exit 1
fi
fnerrors
if [ $? -ne 0 ]
then
echo "fnmain:error in execution at ${cur_date}": >>${fnmain}
else
echo "fnmain:successfully executed at ${cur_date}": >>${fnmain}
fi


