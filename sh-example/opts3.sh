#!/bin/sh
while getopts dq: options
do
	case $options in
	d) 
		echo "–d is a valid switch "
		;;
	q)
		echo "The argument for -q is $OPTARG"
		;;
	\?)
		echo "Usage:opts3 -dq filename ... " 1>&2
		;;
	esac
done


