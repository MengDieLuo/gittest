#!/bin/bash
#History
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

user=$(cut -d ':' -f1 /etc/passwd)
for username in ${user}
do 
	id ${user}
done
