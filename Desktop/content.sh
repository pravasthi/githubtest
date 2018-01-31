#!/bin/bash
set -x
 _file ="$1"
[$# -eq 0]&&{echo "Usage:$0 filename";exit1;}
[! -f "$_file"]&&{echo "Error:$0 file not found";exit2}
if [-s "$_file"]
then echo"$_file has some data"
else
echo"$_file is empty"fi

