#!bin/bash
echo "enter ip address"
read ip
valid_ip $ip
if [ $? -ne 0 ]
then
echo "invalid ip address ($ip)"
else
echo "$ip is perfect ip address"
fi
