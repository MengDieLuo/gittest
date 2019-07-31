#!/bin/sh
num=0
while  [ $num -lt 10 ]
do
	echo -n $num
	num=`expr $num + 1`
done
echo -e "\nAfter loop exits, continue running here"




