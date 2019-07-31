#!/bin/bash
#Progame:
#	use input his first name and last name .program show his full name.
#History :
#2019/07/15 LMD First release
PATh=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
read -p "Please input your first name:" firstname
read -p "Please input your last name:" lastname
echo -e "\nYour full name is:${firstname}${lastname}"
