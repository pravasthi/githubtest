#!/bin/bash
cat log1.txt|grep -c errors
sed -i 's/error/clock/g' log1.txt

