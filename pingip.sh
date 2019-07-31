#!/bin/bash
#History
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
network="192.168.1"	#先定义一个网域的前面部分
for sitenu in $(seq 1 200)	
do
	#底下的程序存在取得ping的回传值时正确的还是失败的
	ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
	#开始显示结果是正确的启动还是错误的没有连通
	if  [ "${result}" == 0 ];
	then
		echo "Server ${network}.${sitenu} is UP."
	else
		echo "Server ${network}.${sitenu} is DOWM"
	fi
done
