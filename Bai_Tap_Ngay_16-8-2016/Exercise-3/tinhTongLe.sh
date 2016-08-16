#!/bin/bash
function tinhTong()
{
	tong=0
	for (( i = 0; i <= $1; i++ ))
	do
		
		if (( i % 2 != 0 ))
		then
			tong=$(($tong + $i))
			
		fi
	done
	return $tong	
}

echo "nhap n "
read n
tinhTong $n
echo $tong
