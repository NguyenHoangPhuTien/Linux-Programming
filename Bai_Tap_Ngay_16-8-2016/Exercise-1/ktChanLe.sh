#!/bin/bash

kiemtraChan()
{
	kq=0
	if(( $1 % 2 == 0 ))
	then
		kq=1
	fi
	return $kq	
}
kiemtraChan $1
result=$?
if [ $result -eq 1 ]
then
	echo "$1 la so chan"
else
	echo "$1 la so le"
fi
exit 0

