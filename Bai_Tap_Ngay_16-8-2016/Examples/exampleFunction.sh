#!/bin/bash
tinhTong() 
{
	tong=0
	for (( i = 1; i <= $1; i++ ))
	do
		tong=$(($tong+$i))
	done
	return $tong	
}
echo "nhap n"
read n
tinhTong $n
tong=$?
echo $tong
exit 0
