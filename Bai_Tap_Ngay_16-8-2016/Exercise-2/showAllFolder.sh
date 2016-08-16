#!/bin/bash
file=$1
if [ -e $file ]
then
	cd $1
	ls -d */
else
	echo "file ko ton tai"
fi
exit 0

