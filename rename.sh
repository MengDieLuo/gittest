#!/bin/sh
if [ $# != 2 ]
then 
	echo Usage: rename oldfilename newfilename
	exit 1
else
	
	mv $1 $2
fi



