#!/bin/bash
echo "no of errors in $1"
grep error $1|wc -l
sed 's/error/clock/' $1



