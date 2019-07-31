#!/bin/sh
datafile=$HOME/bin/new/datafile
. .dbfunctions
if [ ! –f $datafile ]
then
         echo "`basename $datafile` does not exist" 1>&2
         exit 1
fi
echo "Select one:"
cat <<EOF
[1] Add info
[2] Delete info
[3] Exit
EOF
read choice
case "$choice" in
1)
	addon
	;;
2)
	delete
	;;
3)
	updata
	;;
4)
	echo Bye
	exit 0
	;;
*)
	echo bad choice
	exit 2
	;;
esac
echo Returned from function call
echo The name is $name	



