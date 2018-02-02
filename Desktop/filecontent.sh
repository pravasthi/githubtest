#!/bin/bash
echo "content of all files"
echo "--------------------"
cat *
echo "File with spaces"
echo "-----------------"
ls |grep -E '\s'
echo "-----------------"
echo "Empty files"
find /home/swathi/Desktop -type f -empty


