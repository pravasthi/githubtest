#!/bin/bash
validate_ip()
{
ip=$1
stat=1
if [ $ip=~^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ] then
OFIS=$IFS
IFS='.'
ip=${ip}
IFS=$OIFS
[ ${ip[0] -le 255 && ${ip[1]} -le 255 \&& ${ip[2]} -le 255 && ${ip[3] -le 255 ]
stat=$?
fi
return $stat
}

