#!/bin/bash
echo "spliting one file in to 2 files"
echo "--------------------------------"
split -l 2 log.txt F
echo "Creating directories"
echo "---------------------"
mkdir directory1
mkdir directory2
echo "moving each file to directories"
echo "--------------------------------"
mv Faa directory1
mv Fab directory2 

if [ -d split1 ]
then 
echo "directory exists"
mv faa split1
else 
echo "directory does not exists"
mkdir split1
fi

