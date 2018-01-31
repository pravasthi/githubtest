#!/bin/bash
#set -x
var=`date +%Y%m%d%H%M%S`
 echo `cat /home/swathi/logs/*.log` >>log_${var}_con.txt
sleep 2

