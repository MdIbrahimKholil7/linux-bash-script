#!/bin/bash

file="./logger.log"

if [ -f $file ]; then
	echo "File exit working rest of the work"
else 
	echo "File not exit. Terminatting process"
fi


echo "Searching Full Coulmn Error using grep"
grep -i "error" $file
echo "-------------------******----------------"

echo "Print only two column using awk command"

awk '/ERROR/ { print $1, $4 }' $file




