#!/bin/sh
#name:lookup
#lmd
#20190723
#homework
sort -t " " -k 2 $1 | cat -n $1
echo are you want to join us?
read asw
if [ "$asw" == "Y" -o "$asw" == "y" ]
then
	echo write your imformation:
	for (( i=1; i=5; i++ ))
	do
	read str
	sstr=$sstr$str":"
	done
	read strr
	sstr=$sstr$strr
	echo $sstr >> datafile 
	echo add successed
	sort -t " " -k 2 $1 | cat -n $1
else
	echo good bye 
fi


