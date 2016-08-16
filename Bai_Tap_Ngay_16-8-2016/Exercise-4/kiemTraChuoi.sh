#!/bin/bash

echo "Nhap mat khau quy dinh truoc: "
read matKhauQuyDinh
echo "Nhap mat khau: "
read matKhau
while [ $matKhau != $matKhauQuyDinh ]
do
	echo "Ban nhap sai. Vui long nhap lai."
	echo "Nhap lai mat khau: "
	read matKhau
done
exit 0

