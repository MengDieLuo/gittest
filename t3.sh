#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if [ ! -e logical ];
then	
	touch logical
	echo "just touch a file"
	exit 1
elif [ -e logical ] && [ -f logical ];
then
	rm logical
	mkdir logical
	echo "just remove a file and mkdir a directory"
	exit 1
elif [ -e logical ] && [ -d logical ];
then
	rm -rf logical
	echo "just remove a directory"
	exit 1
else
	echo "Does here have anything?"
fi
