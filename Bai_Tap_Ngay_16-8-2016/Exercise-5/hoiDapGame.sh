#!/bin/bash
echo "ban co mun choi ko"
read ans
if [ ${ans,,} == "yes" ]
	then
		echo "1.Mot thang co bao nhieu ngay"
		echo "2.Mot nam co bao nhieu ngay"
		echo "3.Mot nam co bao nhieu thang"
		echo "Xin moi chon cau hoi ? chon 1 or 2 or 3"
		read choice
		case "$choice" in
			1 )
				echo "1.Mot thang co 31 ngay"
				echo "2.Mot thang co 29 ngay"
				echo "3.Mot thang co 30 ngay"
				echo "4.Khong cau nao dung"
				echo "xin moi chon ? chon 1 or 2 or 3 or 4"
				check=$(($SECONDS + 5))
				ans1=0
				while [ $SECONDS -lt $check ]
				do
	
					echo "thoi gian con lai `expr $check - $SECONDS`"
					echo "nhanh len"
					if read -t 0 response
					then
						read ans1
						break
					fi
					sleep 1
					clear

				done
				if [ $ans1 -eq 1 ]
				then
					echo "chuc mung"
				else
					echo "tra loi sai"
				fi
				;;
			2 )
				echo "1.Mot nam co 365 ngay"
				echo "2.Mot thang co 366 ngay"
				echo "3.Mot thang co 300 ngay"
				echo "4.Khong cau nao dung"
				echo "xin moi chon ? chon 1 or 2 or 3 or 4"
				check=$(($SECONDS + 5))
				ans1=0
				while [ $SECONDS -lt $check ]
				do
	
					echo "thoi gian con lai `expr $check - $SECONDS`"
					echo "nhanh len"
					if read -t 0 response
					then
						read ans1
						break
					fi
					sleep 1
					clear

				done
				if [ $ans1 -eq 1 ]
				then
					echo "chuc mung"
				else
					echo "tra loi sai"
				fi
				;;
			3 )
				echo "1.Mot nam co 12 thang"
				echo "2.Mot thang co 11 thang"
				echo "3.Mot thang co 10 thang"
				echo "4.Khong cau nao dung"
				echo "xin moi chon ? chon 1 or 2 or 3 or 4"
				check=$(($SECONDS + 5))
				ans1=0
				while [ $SECONDS -lt $check ]
				do
	
					echo "thoi gian con lai `expr $check - $SECONDS`"
					echo "nhanh len"
					if read -t 0 response
					then
						read ans1
						break
					fi
					sleep 1
					clear

				done
				if [ $ans1 -eq 1 ]
				then
					echo "chuc mung"
				else
					echo "tra loi sai"
				fi
				;;
		esac
else
	echo "cam on ban"
fi