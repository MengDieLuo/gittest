#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


read -p "Your Birthday (MMDD, ex> 0715):" birth
now=`date +%m%d`
if [ "$birth" == "$now" ];
then
	echo "happy birthday to you"
elif [ "$birth" -gt "$now" ];
then	
	year=`date +%Y`
	total_d=$(($((`date --date="$year$birth" +%s`-`date +%s`))/60/60/24))
	echo "Your brithday will be $total_d later1"
else
	year=$((`date +%Y`+1))
	total_d=$(($((`date --date="$year$birth" +%s`-`date +%s`))/60/60/24))
	echo "Your Birthday will be $total_d later"
fi
