#!/bin/bash
#program:
#	programs show the script name parameters..
#History:
#2019/07/15
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


echo "the scrip name is        ==> ${0}"
echo "Total parameter numberis ==> $#"
[ "$#" -lt 2 ] && echo "The number of parameter is less than 2. Stop here." && exit 0
echo "Your whole parameter is  ==> '$@'"
echo "The 1st parameter        ==> ${1}"
echo "The 2nd parameter        ==> ${2}"
