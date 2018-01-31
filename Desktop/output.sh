#!/bin/bash
cat user.txt|grep $1
sh grep.sh `cat user.txt|grep $1`


