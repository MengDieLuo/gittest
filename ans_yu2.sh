#!/bin/bash
#program
#	this program shows the user's choice
#History 
# 2019/07/15 lmd first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH



read -p "please input (Y/N):" yn
if [ "${yn}" == "Y" ]  || [ "${yn}" == "y" ];then
	 echo "OK,continue"
	 exit 0
fi
if [ "${yn}" == "N" ] || [ "${yn}" == "n" ];then
	echo "Oh,interrupt" 
	exit 0
fi
echo "i don't know what your choice is " && exit 0

