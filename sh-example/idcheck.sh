#!/bin/sh
id=`id | awk -F'[=(]' '{print $2}'`
echo your user is id :$id
if [ $id -eq 0 ]
then 
	echo "you are superuser."
else
	echo "you are not superuser"
fi
