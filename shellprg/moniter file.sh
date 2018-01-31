# write a script which will monitor all file system on a mechine for a space on a periodic basis if any file system is asuming more then 90% it will send a mail/report to the system administrator

df-h>diskfree.txt
awk ´{print $1,$5}´logfile.log
