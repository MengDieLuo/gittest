#!/bin/sh
file=./testing
if [ -d $file ]
then 	
	echo "$file is a directory"
elif [ -f $file ]
then
	if [ -r $file -a -w $file -a -x $file ]
	then
		echo "you have to read,writr,and execute permission on $file"
	fi
else
	echo "$file is neither a file nor a directory"
fi




