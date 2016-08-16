#!/bin/bash
echo "nhap so: "
read so
tong=0
for (( i = 1; i <= 5; i++ ))
do
	
	tong=`expr $tong + $i`
done
echo "tong la: $tong"

