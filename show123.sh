#!/bin/bash
#program
#	This script only accecpts the flowing parameter:1 2 3
#History
#2019/07/15 lmd first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "this programs will print your selection!"
read -p "Input your choice " choice
case ${choice} in
 "one")
	echo "Your choice is ONE"
	;;
  "two")
	echo "Your choice is TWO"
	;;
  "three")
	echo "Your choice is THREE"
	;;
  *)
	echo "Usage ${0} {one|two|three}"
	;;
esac
 
