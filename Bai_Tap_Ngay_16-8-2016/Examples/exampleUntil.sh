#!/bin/bash
echo "nhap n"
read n
tong=0
i=10
until (( i == $n ))
do
	tong=`expr $tong + $i`
	i=`expr $i - 1`
done
echo "tong la: $tong"
exit 0
