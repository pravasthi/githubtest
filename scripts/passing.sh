#!/bin/bash
#shell script to pass arguments and how to access arguments
#echo "enter name:my name is :$1"
#to display list of files in a directory
ls -alr|grep ^-| awk 'END{print $NF}'
