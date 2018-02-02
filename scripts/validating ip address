#!bin/bash
#Test an ip address for validation
 valid_ip IP_ADDRESS
if [ $? -eq 0 ] then
echo good
else 
echo bad
fi
valid_ip()
{
local ip=$1
local stat=1
if [ $ip=~"^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$" ] then
OFIS=$IFS
IFS='.'
ip=($ip)
IFS=$OIFS
[${ip[0] -le 255 && ${ip[1]} -le 255 && ${ip[2]} -le 255 && ${ip[3] -le 255 ]
stat=$?
fi
return $stats

