#!/bin/bash
#program :
#	check $1 is equal  to "hello"
#history
#2019/07/15
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if [ "hello" == "hello" ];
then 
	echo "Hello,how are you?"
elif [ "hello" == "" ];
then
	echo "Your must input paramaters,ex>{${0} someword}"
else
	echo "The only parameter is 'hello',ex> {${0} hello}"
fi
