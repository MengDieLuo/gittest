#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

accounts=`cat /etc/passwd | cut -d ':' -f 1`
for account in $accounts
do 
	declare -i i=$i+1
	echo "The $i account is \"$account\" "
done
