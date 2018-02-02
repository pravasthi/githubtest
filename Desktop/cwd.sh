#!/bin/bash
myvar="$1"
echo "$myvar"|sed 's/.\{1\}/& /g'
echo "length of string:$1"
echo ${#myvar}


