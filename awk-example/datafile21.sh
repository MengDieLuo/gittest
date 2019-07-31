#!/bin/sh
exec < tmp
while read line
do
	echo $line
	echo -n "Is this wrod correct?【Y or N】"
	read answer < /dev/tty >
case "$answer" in [Yy]*)
continue ;;
*)
echo "what is the correct"
