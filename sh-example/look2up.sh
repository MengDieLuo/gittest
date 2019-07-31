#!/bin/sh
#name:lookup
#lmd
#20190723
#homework
echo "Select one: "
cat <<EOF
	[1] Add entry.
	[2] Delete entry.
	[3] View entry.
	[4] Exit.
EOF
read choice
case "$choice" in
1)
	echo please input your name:
	read name
	grep ^$name  $1
	if [ $? != 1 ]
	then
		echo you name had be existed
		exit 0
	else
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
		else	
			echo good bye 
		fi
	fi
	;;
2)
	echo what you want to delete?
	read del
	grep ^$del $1
        if [ $? != 1 ]
        then
		sed -i '/$del/d' $1
        else
		echo you name has no existed
                exit 0
	fi
	;;
3)
	
	cat -n $1
	;;
4)
	exit 15
esac


