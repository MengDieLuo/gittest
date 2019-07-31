#!/bin/sh
echo -e a user\'s login name
name=$LOGNAME
grep "$name" /etc/passwd
if [ $? == 0 ]
then 
	echo -e found \<$name\> in the /etc/passwd file. 
else
	echo No such user on our system
fi
