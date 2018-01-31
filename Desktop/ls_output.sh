#!/bin/bash
var=`date +%Y%m%d%H%M%S`
echo `ls -al` >>log_${var}
sleep 2
