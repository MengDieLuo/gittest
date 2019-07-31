#!/bin/bash
#History
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


read -p "Please input a number ,i will count for 1+2+3+...+ypu _input:" nu


sum=0
for (( i=1;i<+${nu};i++ ))
do
	sum=$((${sum}+${i}))
done
echo "result=${sum}"
