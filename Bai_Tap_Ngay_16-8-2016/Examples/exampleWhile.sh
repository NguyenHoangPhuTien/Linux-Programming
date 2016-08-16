#!/bin/bash
echo "nhap n: "
read n
i=1
tong=0
while (( i <= $n ))
do
	tong=`expr $tong + $i`
	i=`expr $i + 1`
done
echo "tong la: $tong"
exit 0

