#!/bin/bash
echo "is it morning(yes or no): "
read ans
shopt -s nocasematch
case "$ans" in 
	"yes" | "y" )
		echo "good moring"
		;;
	"no" | "n" )
		echo "good afternoon"
		;;
	* )
		echo "xin hay yes or no"
		exit 1
		;;
esac
exit 0

